.class public final enum Lcn/xutils/commons/arch/Processor$Arch;
.super Ljava/lang/Enum;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/arch/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Arch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/xutils/commons/arch/Processor$Arch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/xutils/commons/arch/Processor$Arch;

.field public static final enum BIT_32:Lcn/xutils/commons/arch/Processor$Arch;

.field public static final enum BIT_64:Lcn/xutils/commons/arch/Processor$Arch;

.field public static final enum UNKNOWN:Lcn/xutils/commons/arch/Processor$Arch;


# instance fields
.field private final label:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcn/xutils/commons/arch/Processor$Arch;
    .locals 3

    .line 38
    sget-object v0, Lcn/xutils/commons/arch/Processor$Arch;->BIT_32:Lcn/xutils/commons/arch/Processor$Arch;

    sget-object v1, Lcn/xutils/commons/arch/Processor$Arch;->BIT_64:Lcn/xutils/commons/arch/Processor$Arch;

    sget-object v2, Lcn/xutils/commons/arch/Processor$Arch;->UNKNOWN:Lcn/xutils/commons/arch/Processor$Arch;

    filled-new-array {v0, v1, v2}, [Lcn/xutils/commons/arch/Processor$Arch;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 43
    new-instance v0, Lcn/xutils/commons/arch/Processor$Arch;

    const/4 v1, 0x0

    const-string v2, "32-bit"

    const-string v3, "BIT_32"

    invoke-direct {v0, v3, v1, v2}, Lcn/xutils/commons/arch/Processor$Arch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/xutils/commons/arch/Processor$Arch;->BIT_32:Lcn/xutils/commons/arch/Processor$Arch;

    .line 48
    new-instance v0, Lcn/xutils/commons/arch/Processor$Arch;

    const/4 v1, 0x1

    const-string v2, "64-bit"

    const-string v3, "BIT_64"

    invoke-direct {v0, v3, v1, v2}, Lcn/xutils/commons/arch/Processor$Arch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/xutils/commons/arch/Processor$Arch;->BIT_64:Lcn/xutils/commons/arch/Processor$Arch;

    .line 53
    new-instance v0, Lcn/xutils/commons/arch/Processor$Arch;

    const/4 v1, 0x2

    const-string v2, "Unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcn/xutils/commons/arch/Processor$Arch;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/xutils/commons/arch/Processor$Arch;->UNKNOWN:Lcn/xutils/commons/arch/Processor$Arch;

    .line 38
    invoke-static {}, Lcn/xutils/commons/arch/Processor$Arch;->$values()[Lcn/xutils/commons/arch/Processor$Arch;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/arch/Processor$Arch;->$VALUES:[Lcn/xutils/commons/arch/Processor$Arch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lcn/xutils/commons/arch/Processor$Arch;->label:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/xutils/commons/arch/Processor$Arch;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lcn/xutils/commons/arch/Processor$Arch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/arch/Processor$Arch;

    return-object v0
.end method

.method public static values()[Lcn/xutils/commons/arch/Processor$Arch;
    .locals 1

    .line 38
    sget-object v0, Lcn/xutils/commons/arch/Processor$Arch;->$VALUES:[Lcn/xutils/commons/arch/Processor$Arch;

    invoke-virtual {v0}, [Lcn/xutils/commons/arch/Processor$Arch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/xutils/commons/arch/Processor$Arch;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/xutils/commons/arch/Processor$Arch;->label:Ljava/lang/String;

    return-object v0
.end method
