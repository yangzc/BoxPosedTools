.class final Lcn/xutils/commons/reflect/TypeUtils$GenericArrayTypeImpl;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Ljava/lang/reflect/GenericArrayType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/reflect/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GenericArrayTypeImpl"
.end annotation


# instance fields
.field private final componentType:Ljava/lang/reflect/Type;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "componentType"    # Ljava/lang/reflect/Type;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcn/xutils/commons/reflect/TypeUtils$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Type;Lcn/xutils/commons/reflect/TypeUtils$GenericArrayTypeImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/xutils/commons/reflect/TypeUtils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 71
    if-eq p1, p0, :cond_1

    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p0, v0}, Lcn/xutils/commons/reflect/TypeUtils;->-$$Nest$smequals(Ljava/lang/reflect/GenericArrayType;Ljava/lang/reflect/Type;)Z

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

.method public getGenericComponentType()Ljava/lang/reflect/Type;
    .locals 1

    .line 79
    iget-object v0, p0, Lcn/xutils/commons/reflect/TypeUtils$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 87
    const/16 v0, 0x430

    .line 88
    .local v0, "result":I
    iget-object v1, p0, Lcn/xutils/commons/reflect/TypeUtils$GenericArrayTypeImpl;->componentType:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    or-int/2addr v0, v1

    .line 89
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 97
    invoke-static {p0}, Lcn/xutils/commons/reflect/TypeUtils;->toString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
