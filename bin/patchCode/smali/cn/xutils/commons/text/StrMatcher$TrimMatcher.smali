.class final Lcn/xutils/commons/text/StrMatcher$TrimMatcher;
.super Lcn/xutils/commons/text/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrimMatcher"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 422
    invoke-direct {p0}, Lcn/xutils/commons/text/StrMatcher;-><init>()V

    .line 423
    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .locals 2
    .param p1, "buffer"    # [C
    .param p2, "pos"    # I
    .param p3, "bufferStart"    # I
    .param p4, "bufferEnd"    # I

    .line 436
    aget-char v0, p1, p2

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
