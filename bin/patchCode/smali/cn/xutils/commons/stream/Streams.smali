.class public Lcn/xutils/commons/stream/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/stream/Streams$FailableStream;,
        Lcn/xutils/commons/stream/Streams$EnumerationSpliterator;,
        Lcn/xutils/commons/stream/Streams$ArrayCollector;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$0vBUHuCsK5-F0QnSeOtlSKkIYGQ(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hWpmawqjQhjJotBrvOxYRVnG6dI(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static failableStream(Ljava/util/Collection;)Lcn/xutils/commons/stream/Streams$FailableStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcn/xutils/commons/stream/Streams$FailableStream<",
            "TT;>;"
        }
    .end annotation

    .line 535
    .local p0, "stream":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-static {p0}, Lcn/xutils/commons/stream/Streams;->of(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/stream/Streams;->failableStream(Ljava/util/stream/Stream;)Lcn/xutils/commons/stream/Streams$FailableStream;

    move-result-object v0

    return-object v0
.end method

.method public static failableStream(Ljava/util/stream/Stream;)Lcn/xutils/commons/stream/Streams$FailableStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Lcn/xutils/commons/stream/Streams$FailableStream<",
            "TT;>;"
        }
    .end annotation

    .line 579
    .local p0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    new-instance v0, Lcn/xutils/commons/stream/Streams$FailableStream;

    invoke-direct {v0, p0}, Lcn/xutils/commons/stream/Streams$FailableStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public static instancesOf(Ljava/lang/Class;Ljava/util/Collection;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TE;>;",
            "Ljava/util/Collection<",
            "-TE;>;)",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 598
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<-TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    invoke-static {p1}, Lcn/xutils/commons/stream/Streams;->of(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/xutils/commons/stream/Streams;->instancesOf(Ljava/lang/Class;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method private static instancesOf(Ljava/lang/Class;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TE;>;",
            "Ljava/util/stream/Stream<",
            "*>;)",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 603
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<-TE;>;"
    .local p1, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<*>;"
    invoke-static {p1}, Lcn/xutils/commons/stream/Streams;->of(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcn/xutils/commons/stream/Streams$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcn/xutils/commons/stream/Streams$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static nonNull(Ljava/util/Collection;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 615
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-static {p0}, Lcn/xutils/commons/stream/Streams;->of(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/xutils/commons/stream/Streams$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/xutils/commons/stream/Streams$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static nonNull(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TE;>;)",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 640
    .local p0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TE;>;"
    invoke-static {p0}, Lcn/xutils/commons/stream/Streams;->of(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/xutils/commons/stream/Streams$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/xutils/commons/stream/Streams$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs nonNull([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 628
    .local p0, "array":[Ljava/lang/Object;, "[TE;"
    invoke-static {p0}, Lcn/xutils/commons/stream/Streams;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/stream/Streams;->nonNull(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Iterable;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 676
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static of(Ljava/util/Collection;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 652
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static of(Ljava/util/Enumeration;)Ljava/util/stream/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Enumeration<",
            "TE;>;)",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 664
    .local p0, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<TE;>;"
    new-instance v0, Lcn/xutils/commons/stream/Streams$EnumerationSpliterator;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3, p0}, Lcn/xutils/commons/stream/Streams$EnumerationSpliterator;-><init>(JILjava/util/Enumeration;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/util/Iterator;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;)",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 688
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static of(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TE;>;)",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 700
    .local p0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TE;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 713
    .local p0, "values":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stream(Ljava/util/Collection;)Lcn/xutils/commons/stream/Streams$FailableStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Lcn/xutils/commons/stream/Streams$FailableStream<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 758
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-static {p0}, Lcn/xutils/commons/stream/Streams;->failableStream(Ljava/util/Collection;)Lcn/xutils/commons/stream/Streams$FailableStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream(Ljava/util/stream/Stream;)Lcn/xutils/commons/stream/Streams$FailableStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Lcn/xutils/commons/stream/Streams$FailableStream<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 803
    .local p0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    invoke-static {p0}, Lcn/xutils/commons/stream/Streams;->failableStream(Ljava/util/stream/Stream;)Lcn/xutils/commons/stream/Streams$FailableStream;

    move-result-object v0

    return-object v0
.end method

.method public static toArray(Ljava/lang/Class;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*[TT;>;"
        }
    .end annotation

    .line 814
    .local p0, "pElementType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcn/xutils/commons/stream/Streams$ArrayCollector;

    invoke-direct {v0, p0}, Lcn/xutils/commons/stream/Streams$ArrayCollector;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
