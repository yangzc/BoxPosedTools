.class public final enum Lcn/xutils/commons/ClassUtils$Interfaces;
.super Ljava/lang/Enum;
.source "ClassUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/ClassUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Interfaces"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/xutils/commons/ClassUtils$Interfaces;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/xutils/commons/ClassUtils$Interfaces;

.field public static final enum EXCLUDE:Lcn/xutils/commons/ClassUtils$Interfaces;

.field public static final enum INCLUDE:Lcn/xutils/commons/ClassUtils$Interfaces;


# direct methods
.method private static synthetic $values()[Lcn/xutils/commons/ClassUtils$Interfaces;
    .locals 2

    .line 58
    sget-object v0, Lcn/xutils/commons/ClassUtils$Interfaces;->INCLUDE:Lcn/xutils/commons/ClassUtils$Interfaces;

    sget-object v1, Lcn/xutils/commons/ClassUtils$Interfaces;->EXCLUDE:Lcn/xutils/commons/ClassUtils$Interfaces;

    filled-new-array {v0, v1}, [Lcn/xutils/commons/ClassUtils$Interfaces;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 61
    new-instance v0, Lcn/xutils/commons/ClassUtils$Interfaces;

    const-string v1, "INCLUDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/ClassUtils$Interfaces;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/xutils/commons/ClassUtils$Interfaces;->INCLUDE:Lcn/xutils/commons/ClassUtils$Interfaces;

    .line 64
    new-instance v0, Lcn/xutils/commons/ClassUtils$Interfaces;

    const-string v1, "EXCLUDE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/ClassUtils$Interfaces;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/xutils/commons/ClassUtils$Interfaces;->EXCLUDE:Lcn/xutils/commons/ClassUtils$Interfaces;

    .line 58
    invoke-static {}, Lcn/xutils/commons/ClassUtils$Interfaces;->$values()[Lcn/xutils/commons/ClassUtils$Interfaces;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/ClassUtils$Interfaces;->$VALUES:[Lcn/xutils/commons/ClassUtils$Interfaces;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/xutils/commons/ClassUtils$Interfaces;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 58
    const-class v0, Lcn/xutils/commons/ClassUtils$Interfaces;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/ClassUtils$Interfaces;

    return-object v0
.end method

.method public static values()[Lcn/xutils/commons/ClassUtils$Interfaces;
    .locals 1

    .line 58
    sget-object v0, Lcn/xutils/commons/ClassUtils$Interfaces;->$VALUES:[Lcn/xutils/commons/ClassUtils$Interfaces;

    invoke-virtual {v0}, [Lcn/xutils/commons/ClassUtils$Interfaces;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/xutils/commons/ClassUtils$Interfaces;

    return-object v0
.end method
