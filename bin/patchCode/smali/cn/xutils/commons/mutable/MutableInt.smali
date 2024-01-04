.class public Lcn/xutils/commons/mutable/MutableInt;
.super Ljava/lang/Number;
.source "MutableInt.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcn/xutils/commons/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcn/xutils/commons/mutable/MutableInt;",
        ">;",
        "Lcn/xutils/commons/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x77401786b8L


# instance fields
.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 54
    iput p1, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .line 63
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 76
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "operand"    # I

    .line 183
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 184
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 194
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 195
    return-void
.end method

.method public addAndGet(I)I
    .locals 1
    .param p1, "operand"    # I

    .line 227
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    add-int/2addr v0, p1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 228
    return v0
.end method

.method public addAndGet(Ljava/lang/Number;)I
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 241
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 242
    return v0
.end method

.method public compareTo(Lcn/xutils/commons/mutable/MutableInt;)I
    .locals 2
    .param p1, "other"    # Lcn/xutils/commons/mutable/MutableInt;

    .line 358
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    iget v1, p1, Lcn/xutils/commons/mutable/MutableInt;->value:I

    invoke-static {v0, v1}, Lcn/xutils/commons/math/NumberUtils;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lcn/xutils/commons/mutable/MutableInt;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/mutable/MutableInt;->compareTo(Lcn/xutils/commons/mutable/MutableInt;)I

    move-result p1

    return p1
.end method

.method public decrement()V
    .locals 1

    .line 148
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 149
    return-void
.end method

.method public decrementAndGet()I
    .locals 1

    .line 172
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 173
    return v0
.end method

.method public doubleValue()D
    .locals 2

    .line 312
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 334
    instance-of v0, p1, Lcn/xutils/commons/mutable/MutableInt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 335
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    move-object v2, p1

    check-cast v2, Lcn/xutils/commons/mutable/MutableInt;

    invoke-virtual {v2}, Lcn/xutils/commons/mutable/MutableInt;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 337
    :cond_1
    return v1
.end method

.method public floatValue()F
    .locals 1

    .line 302
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public getAndAdd(I)I
    .locals 2
    .param p1, "operand"    # I

    .line 254
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 255
    .local v0, "last":I
    iget v1, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    add-int/2addr v1, p1

    iput v1, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 256
    return v0
.end method

.method public getAndAdd(Ljava/lang/Number;)I
    .locals 3
    .param p1, "operand"    # Ljava/lang/Number;

    .line 269
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 270
    .local v0, "last":I
    iget v1, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 271
    return v0
.end method

.method public getAndDecrement()I
    .locals 2

    .line 159
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 160
    .local v0, "last":I
    iget v1, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 161
    return v0
.end method

.method public getAndIncrement()I
    .locals 2

    .line 125
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 126
    .local v0, "last":I
    iget v1, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 127
    return v0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 1

    .line 85
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcn/xutils/commons/mutable/MutableInt;->getValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 347
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    return v0
.end method

.method public increment()V
    .locals 1

    .line 114
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 115
    return-void
.end method

.method public incrementAndGet()I
    .locals 1

    .line 138
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 139
    return v0
.end method

.method public intValue()I
    .locals 1

    .line 282
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 292
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 94
    iput p1, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 95
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 106
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/mutable/MutableInt;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(I)V
    .locals 1
    .param p1, "operand"    # I

    .line 204
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 205
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 215
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    .line 216
    return-void
.end method

.method public toInteger()Ljava/lang/Integer;
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcn/xutils/commons/mutable/MutableInt;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 368
    iget v0, p0, Lcn/xutils/commons/mutable/MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
