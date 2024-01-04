.class public Lcn/xutils/commons/mutable/MutableByte;
.super Ljava/lang/Number;
.source "MutableByte.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcn/xutils/commons/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lcn/xutils/commons/mutable/MutableByte;",
        ">;",
        "Lcn/xutils/commons/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5e85be21L


# instance fields
.field private value:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(B)V
    .locals 0
    .param p1, "value"    # B

    .line 53
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 54
    iput-byte p1, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .line 63
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 64
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 75
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 76
    return-void
.end method


# virtual methods
.method public add(B)V
    .locals 1
    .param p1, "operand"    # B

    .line 183
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 184
    return-void
.end method

.method public add(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 194
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 195
    return-void
.end method

.method public addAndGet(B)B
    .locals 1
    .param p1, "operand"    # B

    .line 227
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 228
    return v0
.end method

.method public addAndGet(Ljava/lang/Number;)B
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 241
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 242
    return v0
.end method

.method public byteValue()B
    .locals 1

    .line 282
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    return v0
.end method

.method public compareTo(Lcn/xutils/commons/mutable/MutableByte;)I
    .locals 2
    .param p1, "other"    # Lcn/xutils/commons/mutable/MutableByte;

    .line 368
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    iget-byte v1, p1, Lcn/xutils/commons/mutable/MutableByte;->value:B

    invoke-static {v0, v1}, Lcn/xutils/commons/math/NumberUtils;->compare(BB)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lcn/xutils/commons/mutable/MutableByte;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/mutable/MutableByte;->compareTo(Lcn/xutils/commons/mutable/MutableByte;)I

    move-result p1

    return p1
.end method

.method public decrement()V
    .locals 1

    .line 148
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 149
    return-void
.end method

.method public decrementAndGet()B
    .locals 1

    .line 172
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 173
    return v0
.end method

.method public doubleValue()D
    .locals 2

    .line 322
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 344
    instance-of v0, p1, Lcn/xutils/commons/mutable/MutableByte;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 345
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    move-object v2, p1

    check-cast v2, Lcn/xutils/commons/mutable/MutableByte;

    invoke-virtual {v2}, Lcn/xutils/commons/mutable/MutableByte;->byteValue()B

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
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    int-to-float v0, v0

    return v0
.end method

.method public getAndAdd(B)B
    .locals 2
    .param p1, "operand"    # B

    .line 254
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 255
    .local v0, "last":B
    iget-byte v1, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 256
    return v0
.end method

.method public getAndAdd(Ljava/lang/Number;)B
    .locals 3
    .param p1, "operand"    # Ljava/lang/Number;

    .line 269
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 270
    .local v0, "last":B
    iget-byte v1, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v2

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 271
    return v0
.end method

.method public getAndDecrement()B
    .locals 2

    .line 159
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 160
    .local v0, "last":B
    iget-byte v1, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 161
    return v0
.end method

.method public getAndIncrement()B
    .locals 2

    .line 125
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 126
    .local v0, "last":B
    iget-byte v1, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 127
    return v0
.end method

.method public getValue()Ljava/lang/Byte;
    .locals 1

    .line 85
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcn/xutils/commons/mutable/MutableByte;->getValue()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 357
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    return v0
.end method

.method public increment()V
    .locals 1

    .line 114
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 115
    return-void
.end method

.method public incrementAndGet()B
    .locals 1

    .line 138
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 139
    return v0
.end method

.method public intValue()I
    .locals 1

    .line 292
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 302
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(B)V
    .locals 0
    .param p1, "value"    # B

    .line 94
    iput-byte p1, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 95
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 106
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/mutable/MutableByte;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public subtract(B)V
    .locals 1
    .param p1, "operand"    # B

    .line 204
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 205
    return-void
.end method

.method public subtract(Ljava/lang/Number;)V
    .locals 2
    .param p1, "operand"    # Ljava/lang/Number;

    .line 215
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    .line 216
    return-void
.end method

.method public toByte()Ljava/lang/Byte;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcn/xutils/commons/mutable/MutableByte;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 378
    iget-byte v0, p0, Lcn/xutils/commons/mutable/MutableByte;->value:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
