.class final Lcn/xutils/commons/time/FormatCache$ArrayKey;
.super Ljava/lang/Object;
.source "FormatCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/FormatCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayKey"
.end annotation


# instance fields
.field private final hashCode:I

.field private final keys:[Ljava/lang/Object;


# direct methods
.method varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .param p1, "keys"    # [Ljava/lang/Object;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcn/xutils/commons/time/FormatCache$ArrayKey;->keys:[Ljava/lang/Object;

    .line 217
    invoke-static {p1}, Lcn/xutils/commons/time/FormatCache$ArrayKey;->computeHashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcn/xutils/commons/time/FormatCache$ArrayKey;->hashCode:I

    .line 218
    return-void
.end method

.method private static computeHashCode([Ljava/lang/Object;)I
    .locals 4
    .param p0, "keys"    # [Ljava/lang/Object;

    .line 201
    const/16 v0, 0x1f

    .line 202
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 203
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    .line 204
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 227
    if-ne p0, p1, :cond_0

    .line 228
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 231
    return v0

    .line 233
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 234
    return v0

    .line 236
    :cond_2
    move-object v0, p1

    check-cast v0, Lcn/xutils/commons/time/FormatCache$ArrayKey;

    .line 237
    .local v0, "other":Lcn/xutils/commons/time/FormatCache$ArrayKey;
    iget-object v1, p0, Lcn/xutils/commons/time/FormatCache$ArrayKey;->keys:[Ljava/lang/Object;

    iget-object v2, v0, Lcn/xutils/commons/time/FormatCache$ArrayKey;->keys:[Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 222
    iget v0, p0, Lcn/xutils/commons/time/FormatCache$ArrayKey;->hashCode:I

    return v0
.end method
