.class final Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeImpl;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/reflect/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WildcardTypeImpl"
.end annotation


# instance fields
.field private final lowerBounds:[Ljava/lang/reflect/Type;

.field private final upperBounds:[Ljava/lang/reflect/Type;


# direct methods
.method private constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .locals 1
    .param p1, "upperBounds"    # [Ljava/lang/reflect/Type;
    .param p2, "lowerBounds"    # [Ljava/lang/reflect/Type;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    sget-object v0, Lcn/xutils/commons/ArrayUtils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    invoke-static {p1, v0}, Lcn/xutils/commons/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    iput-object v0, p0, Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeImpl;->upperBounds:[Ljava/lang/reflect/Type;

    .line 235
    sget-object v0, Lcn/xutils/commons/ArrayUtils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    invoke-static {p2, v0}, Lcn/xutils/commons/ObjectUtils;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    iput-object v0, p0, Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeImpl;->lowerBounds:[Ljava/lang/reflect/Type;

    .line 236
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 243
    if-eq p1, p0, :cond_1

    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0, v0}, Lcn/xutils/commons/reflect/TypeUtils;->-$$Nest$smequals(Ljava/lang/reflect/WildcardType;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 1

    .line 251
    iget-object v0, p0, Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeImpl;->lowerBounds:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 1

    .line 259
    iget-object v0, p0, Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeImpl;->upperBounds:[Ljava/lang/reflect/Type;

    invoke-virtual {v0}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 267
    const/16 v0, 0x4900

    .line 268
    .local v0, "result":I
    iget-object v1, p0, Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeImpl;->upperBounds:[Ljava/lang/reflect/Type;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 269
    shl-int/lit8 v0, v0, 0x8

    .line 270
    iget-object v1, p0, Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeImpl;->lowerBounds:[Ljava/lang/reflect/Type;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 271
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 279
    invoke-static {p0}, Lcn/xutils/commons/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
