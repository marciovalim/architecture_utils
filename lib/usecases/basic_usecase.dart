abstract class BasicUsecase<Input, Output> {
  const BasicUsecase();

  Future<Output> call(Input input);
}
