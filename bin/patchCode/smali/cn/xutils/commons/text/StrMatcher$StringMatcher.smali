.class final Lcn/xutils/commons/text/StrMatcher$StringMatcher;
.super Lcn/xutils/commons/text/StrMatcher;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringMatcher"
.end annotation


# instance fields
.field private final chars:[C


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 354
    invoke-direct {p0}, Lcn/xutils/commons/text/StrMatcher;-><init>()V

    .line 355
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrMatcher$StringMatcher;->chars:[C

    .line 356
    return-void
.end method


# virtual methods
.method public isMatch([CIII)I
    .locals 5
    .param p1, "buffer"    # [C
    .param p2, "pos"    # I
    .param p3, "bufferStart"    # I
    .param p4, "bufferEnd"    # I

    .line 369
    iget-object v0, p0, Lcn/xutils/commons/text/StrMatcher$StringMatcher;->chars:[C

    array-length v0, v0

    .line 370
    .local v0, "len":I
    add-int v1, p2, v0

    const/4 v2, 0x0

    if-le v1, p4, :cond_0

    .line 371
    return v2

    .line 373
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcn/xutils/commons/text/StrMatcher$StringMatcher;->chars:[C

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 374
    aget-char v3, v3, v1

    aget-char v4, p1, p2

    if-eq v3, v4, :cond_1

    .line 375
    return v2

    .line 373
    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 378
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/text/StrMatcher$StringMatcher;->chars:[C

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
