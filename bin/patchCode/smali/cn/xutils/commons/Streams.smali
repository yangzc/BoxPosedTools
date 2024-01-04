.class public Lcn/xutils/commons/Streams;
.super Ljava/lang/Object;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/Streams$FailableStream;,
        Lcn/xutils/commons/Streams$ArrayCollector;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stream(Ljava/util/Collection;)Lcn/xutils/commons/Streams$FailableStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TO;>;)",
            "Lcn/xutils/commons/Streams$FailableStream<",
            "TO;>;"
        }
    .end annotation

    .line 487
    .local p0, "stream":Ljava/util/Collection;, "Ljava/util/Collection<TO;>;"
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/Streams;->stream(Ljava/util/stream/Stream;)Lcn/xutils/commons/Streams$FailableStream;

    move-result-object v0

    return-object v0
.end method

.method public static stream(Ljava/util/stream/Stream;)Lcn/xutils/commons/Streams$FailableStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TO;>;)",
            "Lcn/xutils/commons/Streams$FailableStream<",
            "TO;>;"
        }
    .end annotation

    .line 445
    .local p0, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TO;>;"
    new-instance v0, Lcn/xutils/commons/Streams$FailableStream;

    invoke-direct {v0, p0}, Lcn/xutils/commons/Streams$FailableStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public static toArray(Ljava/lang/Class;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TO;>;)",
            "Ljava/util/stream/Collector<",
            "TO;*[TO;>;"
        }
    .end annotation

    .line 549
    .local p0, "pElementType":Ljava/lang/Class;, "Ljava/lang/Class<TO;>;"
    new-instance v0, Lcn/xutils/commons/Streams$ArrayCollector;

    invoke-direct {v0, p0}, Lcn/xutils/commons/Streams$ArrayCollector;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
