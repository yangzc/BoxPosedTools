.class public Lcn/xutils/commons/Streams$FailableStream;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailableStream"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private stream:Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Stream<",
            "TO;>;"
        }
    .end annotation
.end field

.field private terminated:Z


# direct methods
.method public constructor <init>(Ljava/util/stream/Stream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "TO;>;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lcn/xutils/commons/Streams$FailableStream;, "Lcn/xutils/commons/Streams$FailableStream<TO;>;"
    .local p1, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcn/xutils/commons/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    .line 87
    return-void
.end method


# virtual methods
.method public allMatch(Lcn/xutils/commons/Functions$FailablePredicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/Functions$FailablePredicate<",
            "TO;*>;)Z"
        }
    .end annotation

    .line 377
    .local p0, "this":Lcn/xutils/commons/Streams$FailableStream;, "Lcn/xutils/commons/Streams$FailableStream<TO;>;"
    .local p1, "predicate":Lcn/xutils/commons/Functions$FailablePredicate;, "Lcn/xutils/commons/Functions$FailablePredicate<TO;*>;"
    invoke-virtual {p0}, Lcn/xutils/commons/Streams$FailableStream;->assertNotTerminated()V

    .line 378
    invoke-virtual {p0}, Lcn/xutils/commons/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Lcn/xutils/commons/Functions;->asPredicate(Lcn/xutils/commons/Functions$FailablePredicate;)Ljava/util/function/Predicate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public anyMatch(Lcn/xutils/commons/Functions$FailablePredicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/Functions$FailablePredicate<",
            "TO;*>;)Z"
        }
    .end annotation

    .line 401
    .local p0, "this":Lcn/xutils/commons/Streams$FailableStream;, "Lcn/xutils/commons/Streams$FailableStream<TO;>;"
    .local p1, "predicate":Lcn/xutils/commons/Functions$FailablePredicate;, "Lcn/xutils/commons/Functions$FailablePredicate<TO;*>;"
    invoke-virtual {p0}, Lcn/xutils/commons/Streams$FailableStream;->assertNotTerminated()V

    .line 402
    invoke-virtual {p0}, Lcn/xutils/commons/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Lcn/xutils/commons/Functions;->asPredicate(Lcn/xutils/commons/Functions$FailablePredicate;)Ljava/util/function/Predicate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method protected assertNotTerminated()V
    .locals 2

    .line 95
    .local p0, "this":Lcn/xutils/commons/Streams$FailableStream;, "Lcn/xutils/commons/Streams$FailableStream<TO;>;"
    iget-boolean v0, p0, Lcn/xutils/commons/Streams$FailableStream;->terminated:Z

    if-nez v0, :cond_0

    .line 98
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This stream is already terminated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;-TO;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    .line 270
    .local p0, "this":Lcn/xutils/commons/Streams$FailableStream;, "Lcn/xutils/commons/Streams$FailableStream<TO;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TR;>;"
    .local p2, "accumulator":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;-TO;>;"
    .local p3, "combiner":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<TR;TR;>;"
    invoke-virtual {p0}, Lcn/xutils/commons/Streams$FailableStream;->makeTerminated()V

    .line 271
    invoke-virtual {p0}, Lcn/xutils/commons/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public collect(Ljava/util/stream/Collector;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector<",
            "-TO;TA;TR;>;)TR;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lcn/xutils/commons/Streams$FailableStream;, "Lcn/xutils/commons/Streams$FailableStream<TO;>;"
    .local p1, "collector":Ljava/util/stream/Collector;, "Ljava/util/stream/Collector<-TO;TA;TR;>;"
    invoke-virtual {p0}, Lcn/xutils/commons/Streams$FailableStream;->makeTerminated()V

    .line 213
    invoke-virtual {p0}, Lcn/xutils/commons/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lcn/xutils/commons/Functions$FailablePredicate;)Lcn/xutils/commons/Streams$FailableStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/Functions$FailablePredicate<",
            "TO;*>;)",
            "Lcn/xutils/commons/Streams$FailableStream<",
            "TO;>;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcn/xutils/commons/Streams$FailableStream;, "Lcn/xutils/commons/Streams$FailableStream<TO;>;"
    .local p1, "predicate":Lcn/xutils/commons/Functions$FailablePredicate;, "Lcn/xutils/commons/Functions$FailablePredicate<TO;*>;"
    invoke-virtual {p0}, Lcn/xutils/commons/Streams$FailableStream;->assertNotTerminated()V

    .line 124
    iget-object v0, p0, Lcn/xutils/commons/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    invoke-static {p1}, Lcn/xutils/commons/Functions;->asPredicate(Lcn/xutils/commons/Functions$FailablePredicate;)Ljava/util/function/Predicate;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    .line 125
    return-object p0
.end method

.method public forEach(Lcn/xutils/commons/Functions$FailableConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/Functions$FailableConsumer<",
            "TO;*>;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lcn/xutils/commons/Streams$FailableStream;, "Lcn/xutils/commons/Streams$FailableStream<TO;>;"
    .local p1, "action":Lcn/xutils/commons/Functions$FailableConsumer;, "Lcn/xutils/commons/Functions$FailableConsumer<TO;*>;"
    invoke-virtual {p0}, Lcn/xutils/commons/Streams$FailableStream;->makeTerminated()V

    .line 149
    invoke-virtual {p0}, Lcn/xutils/commons/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Lcn/xutils/commons/Functions;->asConsumer(Lcn/xutils/commons/Functions$FailableConsumer;)Ljava/util/function/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 150
    return-void
.end method

.method protected makeTerminated()V
    .locals 1

    .line 106
    .local p0, "this":Lcn/xutils/commons/Streams$FailableStream;, "Lcn/xutils/commons/Streams$FailableStream<TO;>;"
    invoke-virtual {p0}, Lcn/xutils/commons/Streams$FailableStream;->assertNotTerminated()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/xutils/commons/Streams$FailableStream;->terminated:Z

    .line 108
    return-void
.end method

.method public map(Lcn/xutils/commons/Functions$FailableFunction;)Lcn/xutils/commons/Streams$FailableStream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/xutils/commons/Functions$FailableFunction<",
            "TO;TR;*>;)",
            "Lcn/xutils/commons/Streams$FailableStream<",
            "TR;>;"
        }
    .end annotation

    .line 341
    .local p0, "this":Lcn/xutils/commons/Streams$FailableStream;, "Lcn/xutils/commons/Streams$FailableStream<TO;>;"
    .local p1, "mapper":Lcn/xutils/commons/Functions$FailableFunction;, "Lcn/xutils/commons/Functions$FailableFunction<TO;TR;*>;"
    invoke-virtual {p0}, Lcn/xutils/commons/Streams$FailableStream;->assertNotTerminated()V

    .line 342
    new-instance v0, Lcn/xutils/commons/Streams$FailableStream;

    iget-object v1, p0, Lcn/xutils/commons/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    invoke-static {p1}, Lcn/xutils/commons/Functions;->asFunction(Lcn/xutils/commons/Functions$FailableFunction;)Ljava/util/function/Function;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/xutils/commons/Streams$FailableStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/util/function/BinaryOperator<",
            "TO;>;)TO;"
        }
    .end annotation

    .line 324
    .local p0, "this":Lcn/xutils/commons/Streams$FailableStream;, "Lcn/xutils/commons/Streams$FailableStream<TO;>;"
    .local p1, "identity":Ljava/lang/Object;, "TO;"
    .local p2, "accumulator":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TO;>;"
    invoke-virtual {p0}, Lcn/xutils/commons/Streams$FailableStream;->makeTerminated()V

    .line 325
    invoke-virtual {p0}, Lcn/xutils/commons/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TO;>;"
        }
    .end annotation

    .line 350
    .local p0, "this":Lcn/xutils/commons/Streams$FailableStream;, "Lcn/xutils/commons/Streams$FailableStream<TO;>;"
    iget-object v0, p0, Lcn/xutils/commons/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    return-object v0
.end method
