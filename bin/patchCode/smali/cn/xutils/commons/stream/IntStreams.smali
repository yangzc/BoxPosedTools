.class public Lcn/xutils/commons/stream/IntStreams;
.super Ljava/lang/Object;
.source "IntStreams.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static range(I)Ljava/util/stream/IntStream;
    .locals 1
    .param p0, "endExclusive"    # I

    .line 38
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static rangeClosed(I)Ljava/util/stream/IntStream;
    .locals 1
    .param p0, "endInclusive"    # I

    .line 48
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->rangeClosed(II)Ljava/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method
