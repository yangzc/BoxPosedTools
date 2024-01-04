.class public Lcn/xutils/commons/mutable/MutableShort;
.super Ljava/lang/Number;
.source "MutableShort.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcn/xutils/commons/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcn/xutils/commons/mutable/MutableShort;",
        ">;",
        "Lcn/xutils/commons/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7f4d983fL


# instance fields
.field private value:S


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .line 63
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    iput-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 75
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 76
    return-void
.end method

.method public constructor <init>(S)V
    .locals 0
    .param p1, "value"    # S

    .line 53
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 54
    iput-short p1, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 55
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 194
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 195
    return-void
.end method

.method public add(S)V
    .locals 1
    .param p1, "operand"    # S

    .line 183
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 184
    return-void
.end method

.method public addAndGet(Ljava/lang/Number;)S
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 241
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 242
    return v0
.end method

.method public addAndGet(S)S
    .locals 1
    .param p1, "operand"    # S

    .line 227
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 228
    return v0
.end method

.method public compareTo(Lcn/xutils/commons/mutable/MutableShort;)I
    .locals 2
    .param p1, "other"    # Lcn/xutils/commons/mutable/MutableShort;

    .line 368
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    iget-short v1, p1, Lcn/xutils/commons/mutable/MutableShort;->value:S

    invoke-static {v0, v1}, Lcn/xutils/commons/math/NumberUtils;->compare(SS)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lcn/xutils/commons/mutable/MutableShort;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/mutable/MutableShort;->compareTo(Lcn/xutils/commons/mutable/MutableShort;)I

    move-result p1

    return p1
.end method

.method public decrement()V
    .locals 1

    .line 148
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 149
    return-void
.end method

.method public decrementAndGet()S
    .locals 1

    .line 172
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 173
    return v0
.end method

.method public doubleValue()D
    .locals 2

    .line 322
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 344
    instance-of v0, p1, Lcn/xutils/commons/mutable/MutableShort;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 345
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    move-object v2, p1

    check-cast v2, Lcn/xutils/commons/mutable/MutableShort;

    invoke-virtual {v2}, Lcn/xutils/commons/mutable/MutableShort;->shortValue()S

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 347
    :cond_1
    return v1
.end method

.method public floatValue()F
    .locals 1

    .line 312
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    int-to-float v0, v0

    return v0
.end method

.method public getAndAdd(Ljava/lang/Number;)S
    .locals 3
    .param p1, "operand"    # Ljava/lang/Number;

    .line 269
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 270
    .local v0, "last":S
    iget-short v1, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v2

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 271
    return v0
.end method

.method public getAndAdd(S)S
    .locals 2
    .param p1, "operand"    # S

    .line 254
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 255
    .local v0, "last":S
    iget-short v1, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    add-int/2addr v1, p1

    int-to-short v1, v1

    iput-short v1, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 256
    return v0
.end method

.method public getAndDecrement()S
    .locals 2

    .line 159
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 160
    .local v0, "last":S
    iget-short v1, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 161
    return v0
.end method

.method public getAndIncrement()S
    .locals 2

    .line 125
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 126
    .local v0, "last":S
    iget-short v1, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 127
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcn/xutils/commons/mutable/MutableShort;->getValue()Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Short;
    .locals 1

    .line 85
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 357
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    return v0
.end method

.method public increment()V
    .locals 1

    .line 114
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 115
    return-void
.end method

.method public incrementAndGet()S
    .locals 1

    .line 138
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 139
    return v0
.end method

.method public intValue()I
    .locals 1

    .line 292
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 302
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    iput-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 106
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/mutable/MutableShort;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public setValue(S)V
    .locals 0
    .param p1, "value"    # S

    .line 94
    iput-short p1, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 95
    return-void
.end method

.method public shortValue()S
    .locals 1

    .line 282
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    return v0
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 215
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 216
    return-void
.end method

.method public subtract(S)V
    .locals 1
    .param p1, "operand"    # S

    .line 204
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    .line 205
    return-void
.end method

.method public toShort()Ljava/lang/Short;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcn/xutils/commons/mutable/MutableShort;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 378
    iget-short v0, p0, Lcn/xutils/commons/mutable/MutableShort;->value:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
