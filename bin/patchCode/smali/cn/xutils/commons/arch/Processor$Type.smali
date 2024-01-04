.class public final enum Lcn/xutils/commons/arch/Processor$Type;
.super Ljava/lang/Enum;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/arch/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/xutils/commons/arch/Processor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/xutils/commons/arch/Processor$Type;

.field public static final enum AARCH_64:Lcn/xutils/commons/arch/Processor$Type;

.field public static final enum IA_64:Lcn/xutils/commons/arch/Processor$Type;

.field public static final enum PPC:Lcn/xutils/commons/arch/Processor$Type;

.field public static final enum UNKNOWN:Lcn/xutils/commons/arch/Processor$Type;

.field public static final enum X86:Lcn/xutils/commons/arch/Processor$Type;


# instance fields
.field private final label:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcn/xutils/commons/arch/Processor$Type;
    .locals 5

    .line 85
    sget-object v0, Lcn/xutils/commons/arch/Processor$Type;->AARCH_64:Lcn/xutils/commons/arch/Processor$Type;

    sget-object v1, Lcn/xutils/commons/arch/Processor$Type;->X86:Lcn/xutils/commons/arch/Processor$Type;

    sget-object v2, Lcn/xutils/commons/arch/Processor$Type;->IA_64:Lcn/xutils/commons/arch/Processor$Type;

    sget-object v3, Lcn/xutils/commons/arch/Processor$Type;->PPC:Lcn/xutils/commons/arch/Processor$Type;

    sget-object v4, Lcn/xutils/commons/arch/Processor$Type;->UNKNOWN:Lcn/xutils/commons/arch/Processor$Type;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcn/xutils/commons/arch/Processor$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 92
    new-instance v0, Lcn/xutils/commons/arch/Processor$Type;

    const/4 v1, 0x0

    const-string v2, "AArch64"

    const-string v3, "AARCH_64"

    invoke-direct {v0, v3, v1, v2}, Lcn/xutils/commons/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/xutils/commons/arch/Processor$Type;->AARCH_64:Lcn/xutils/commons/arch/Processor$Type;

    .line 97
    new-instance v0, Lcn/xutils/commons/arch/Processor$Type;

    const/4 v1, 0x1

    const-string v2, "x86"

    const-string v3, "X86"

    invoke-direct {v0, v3, v1, v2}, Lcn/xutils/commons/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/xutils/commons/arch/Processor$Type;->X86:Lcn/xutils/commons/arch/Processor$Type;

    .line 102
    new-instance v0, Lcn/xutils/commons/arch/Processor$Type;

    const/4 v1, 0x2

    const-string v2, "IA-64"

    const-string v3, "IA_64"

    invoke-direct {v0, v3, v1, v2}, Lcn/xutils/commons/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/xutils/commons/arch/Processor$Type;->IA_64:Lcn/xutils/commons/arch/Processor$Type;

    .line 107
    new-instance v0, Lcn/xutils/commons/arch/Processor$Type;

    const-string v1, "PPC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcn/xutils/commons/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/xutils/commons/arch/Processor$Type;->PPC:Lcn/xutils/commons/arch/Processor$Type;

    .line 112
    new-instance v0, Lcn/xutils/commons/arch/Processor$Type;

    const/4 v1, 0x4

    const-string v2, "Unknown"

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcn/xutils/commons/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/xutils/commons/arch/Processor$Type;->UNKNOWN:Lcn/xutils/commons/arch/Processor$Type;

    .line 85
    invoke-static {}, Lcn/xutils/commons/arch/Processor$Type;->$values()[Lcn/xutils/commons/arch/Processor$Type;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/arch/Processor$Type;->$VALUES:[Lcn/xutils/commons/arch/Processor$Type;

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

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput-object p3, p0, Lcn/xutils/commons/arch/Processor$Type;->label:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/xutils/commons/arch/Processor$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 85
    const-class v0, Lcn/xutils/commons/arch/Processor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/arch/Processor$Type;

    return-object v0
.end method

.method public static values()[Lcn/xutils/commons/arch/Processor$Type;
    .locals 1

    .line 85
    sget-object v0, Lcn/xutils/commons/arch/Processor$Type;->$VALUES:[Lcn/xutils/commons/arch/Processor$Type;

    invoke-virtual {v0}, [Lcn/xutils/commons/arch/Processor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/xutils/commons/arch/Processor$Type;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcn/xutils/commons/arch/Processor$Type;->label:Ljava/lang/String;

    return-object v0
.end method
