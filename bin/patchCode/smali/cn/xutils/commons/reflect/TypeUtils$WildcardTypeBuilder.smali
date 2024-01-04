.class public Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeBuilder;
.super Ljava/lang/Object;
.source "TypeUtils.java"

# interfaces
.implements Lcn/xutils/commons/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/reflect/TypeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WildcardTypeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/xutils/commons/builder/Builder<",
        "Ljava/lang/reflect/WildcardType;",
        ">;"
    }
.end annotation


# instance fields
.field private lowerBounds:[Ljava/lang/reflect/Type;

.field private upperBounds:[Ljava/lang/reflect/Type;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    return-void
.end method

.method synthetic constructor <init>(Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeBuilder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeBuilder;->build()Ljava/lang/reflect/WildcardType;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/reflect/WildcardType;
    .locals 4

    .line 196
    new-instance v0, Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeImpl;

    iget-object v1, p0, Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeBuilder;->upperBounds:[Ljava/lang/reflect/Type;

    iget-object v2, p0, Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeBuilder;->lowerBounds:[Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeImpl-IA;)V

    return-object v0
.end method

.method public varargs withLowerBounds([Ljava/lang/reflect/Type;)Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeBuilder;
    .locals 0
    .param p1, "bounds"    # [Ljava/lang/reflect/Type;

    .line 205
    iput-object p1, p0, Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeBuilder;->lowerBounds:[Ljava/lang/reflect/Type;

    .line 206
    return-object p0
.end method

.method public varargs withUpperBounds([Ljava/lang/reflect/Type;)Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeBuilder;
    .locals 0
    .param p1, "bounds"    # [Ljava/lang/reflect/Type;

    .line 215
    iput-object p1, p0, Lcn/xutils/commons/reflect/TypeUtils$WildcardTypeBuilder;->upperBounds:[Ljava/lang/reflect/Type;

    .line 216
    return-object p0
.end method
