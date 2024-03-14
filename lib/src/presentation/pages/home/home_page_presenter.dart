import 'package:apod/src/domain/model/apod_model.dart';
import 'package:apod/src/domain/use_cases/get_apod_items_use_case.dart';
import 'package:apod/src/domain/use_cases/use_case.dart';
import 'package:apod/src/utils/base_mvp.dart';
import 'package:rxdart/subjects.dart';

class HomePagePresenter extends BasePresenter {
  HomePagePresenter(this._apodItemsUseCase);

  final GetApodItemsUseCase _apodItemsUseCase;

  final _items = BehaviorSubject<List<ApodModel>>()..add([]);
  Stream<List<ApodModel>> get items => _items.stream;

  static const _pageSize =  7;
  DateTime _endDate = DateTime.now();

  @override
  void init() {
    super.init();
    refresh();
  }

  @override
  Future refresh()async {
    _getApodItems(true);
  }

  void loadMore() {
    _getApodItems(false);
  }

  void _getApodItems(bool refresh) async {
    if(refresh){
      _endDate = DateTime.now();
      _items.add([]);
    }else{
      _endDate = _endDate.subtract(const Duration(days: _pageSize+1));
    }
    await _apodItemsUseCase.execute(
      withError: true,
      withLoading: refresh,
      params: GetApodItemsUseCaseParams(
        endDate:_endDate,
        startDate: _endDate.subtract(
          const Duration(days: _pageSize),
        ),
      ),
    ).onSuccess((data) {
      _items.add(_items.value..addAll(data));
    });
  }

  @override
  void dispose() {
    _items.close();
    super.dispose();
  }
}
