.class public interface abstract Lcn/xutils/commons/concurrent/UncheckedFuture;
.super Ljava/lang/Object;
.source "UncheckedFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public static map(Ljava/util/Collection;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;)",
            "Ljava/util/stream/Stream<",
            "Lcn/xutils/commons/concurrent/UncheckedFuture<",
            "TT;>;>;"
        }
    .end annotation

    .line 49
    .local p0, "futures":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Future<TT;>;>;"
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/xutils/commons/concurrent/UncheckedFuture$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/xutils/commons/concurrent/UncheckedFuture$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static on(Ljava/util/concurrent/Future;)Lcn/xutils/commons/concurrent/UncheckedFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)",
            "Lcn/xutils/commons/concurrent/UncheckedFuture<",
            "TT;>;"
        }
    .end annotation

    .line 73
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    new-instance v0, Lcn/xutils/commons/concurrent/UncheckedFutureImpl;

    invoke-direct {v0, p0}, Lcn/xutils/commons/concurrent/UncheckedFutureImpl;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static on(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;)",
            "Ljava/util/Collection<",
            "Lcn/xutils/commons/concurrent/UncheckedFuture<",
            "TT;>;>;"
        }
    .end annotation

    .line 61
    .local p0, "futures":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/concurrent/Future<TT;>;>;"
    invoke-static {p0}, Lcn/xutils/commons/concurrent/UncheckedFuture;->map(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation
.end method
