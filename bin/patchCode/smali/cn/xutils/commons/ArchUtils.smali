.class public Lcn/xutils/commons/ArchUtils;
.super Ljava/lang/Object;
.source "ArchUtils.java"


# static fields
.field private static final ARCH_TO_PROCESSOR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/xutils/commons/arch/Processor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/xutils/commons/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    .line 39
    invoke-static {}, Lcn/xutils/commons/ArchUtils;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addProcessor(Ljava/lang/String;Lcn/xutils/commons/arch/Processor;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "processor"    # Lcn/xutils/commons/arch/Processor;

    .line 88
    sget-object v0, Lcn/xutils/commons/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists in processor map"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static varargs addProcessors(Lcn/xutils/commons/arch/Processor;[Ljava/lang/String;)V
    .locals 2
    .param p0, "processor"    # Lcn/xutils/commons/arch/Processor;
    .param p1, "keys"    # [Ljava/lang/String;

    .line 102
    invoke-static {p1}, Lcn/xutils/commons/stream/Streams;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/xutils/commons/ArchUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/xutils/commons/ArchUtils$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/arch/Processor;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 103
    return-void
.end method

.method public static getProcessor()Lcn/xutils/commons/arch/Processor;
    .locals 1

    .line 115
    invoke-static {}, Lcn/xutils/commons/SystemProperties;->getOsArch()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/ArchUtils;->getProcessor(Ljava/lang/String;)Lcn/xutils/commons/arch/Processor;

    move-result-object v0

    return-object v0
.end method

.method public static getProcessor(Ljava/lang/String;)Lcn/xutils/commons/arch/Processor;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 126
    sget-object v0, Lcn/xutils/commons/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/arch/Processor;

    return-object v0
.end method

.method private static init()V
    .locals 0

    .line 43
    invoke-static {}, Lcn/xutils/commons/ArchUtils;->init_X86_32Bit()V

    .line 44
    invoke-static {}, Lcn/xutils/commons/ArchUtils;->init_X86_64Bit()V

    .line 45
    invoke-static {}, Lcn/xutils/commons/ArchUtils;->init_IA64_32Bit()V

    .line 46
    invoke-static {}, Lcn/xutils/commons/ArchUtils;->init_IA64_64Bit()V

    .line 47
    invoke-static {}, Lcn/xutils/commons/ArchUtils;->init_PPC_32Bit()V

    .line 48
    invoke-static {}, Lcn/xutils/commons/ArchUtils;->init_PPC_64Bit()V

    .line 49
    invoke-static {}, Lcn/xutils/commons/ArchUtils;->init_Aarch_64Bit()V

    .line 50
    return-void
.end method

.method private static init_Aarch_64Bit()V
    .locals 3

    .line 53
    new-instance v0, Lcn/xutils/commons/arch/Processor;

    sget-object v1, Lcn/xutils/commons/arch/Processor$Arch;->BIT_64:Lcn/xutils/commons/arch/Processor$Arch;

    sget-object v2, Lcn/xutils/commons/arch/Processor$Type;->AARCH_64:Lcn/xutils/commons/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/arch/Processor;-><init>(Lcn/xutils/commons/arch/Processor$Arch;Lcn/xutils/commons/arch/Processor$Type;)V

    const-string v1, "aarch64"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/xutils/commons/ArchUtils;->addProcessors(Lcn/xutils/commons/arch/Processor;[Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private static init_IA64_32Bit()V
    .locals 3

    .line 65
    new-instance v0, Lcn/xutils/commons/arch/Processor;

    sget-object v1, Lcn/xutils/commons/arch/Processor$Arch;->BIT_32:Lcn/xutils/commons/arch/Processor$Arch;

    sget-object v2, Lcn/xutils/commons/arch/Processor$Type;->IA_64:Lcn/xutils/commons/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/arch/Processor;-><init>(Lcn/xutils/commons/arch/Processor$Arch;Lcn/xutils/commons/arch/Processor$Type;)V

    const-string v1, "ia64_32"

    const-string v2, "ia64n"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/xutils/commons/ArchUtils;->addProcessors(Lcn/xutils/commons/arch/Processor;[Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private static init_IA64_64Bit()V
    .locals 3

    .line 69
    new-instance v0, Lcn/xutils/commons/arch/Processor;

    sget-object v1, Lcn/xutils/commons/arch/Processor$Arch;->BIT_64:Lcn/xutils/commons/arch/Processor$Arch;

    sget-object v2, Lcn/xutils/commons/arch/Processor$Type;->IA_64:Lcn/xutils/commons/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/arch/Processor;-><init>(Lcn/xutils/commons/arch/Processor$Arch;Lcn/xutils/commons/arch/Processor$Type;)V

    const-string v1, "ia64"

    const-string v2, "ia64w"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/xutils/commons/ArchUtils;->addProcessors(Lcn/xutils/commons/arch/Processor;[Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private static init_PPC_32Bit()V
    .locals 6

    .line 73
    new-instance v0, Lcn/xutils/commons/arch/Processor;

    sget-object v1, Lcn/xutils/commons/arch/Processor$Arch;->BIT_32:Lcn/xutils/commons/arch/Processor$Arch;

    sget-object v2, Lcn/xutils/commons/arch/Processor$Type;->PPC:Lcn/xutils/commons/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/arch/Processor;-><init>(Lcn/xutils/commons/arch/Processor$Arch;Lcn/xutils/commons/arch/Processor$Type;)V

    const-string v1, "power_pc"

    const-string v2, "power_rs"

    const-string v3, "ppc"

    const-string v4, "power"

    const-string v5, "powerpc"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/xutils/commons/ArchUtils;->addProcessors(Lcn/xutils/commons/arch/Processor;[Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private static init_PPC_64Bit()V
    .locals 6

    .line 77
    new-instance v0, Lcn/xutils/commons/arch/Processor;

    sget-object v1, Lcn/xutils/commons/arch/Processor$Arch;->BIT_64:Lcn/xutils/commons/arch/Processor$Arch;

    sget-object v2, Lcn/xutils/commons/arch/Processor$Type;->PPC:Lcn/xutils/commons/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/arch/Processor;-><init>(Lcn/xutils/commons/arch/Processor$Arch;Lcn/xutils/commons/arch/Processor$Type;)V

    const-string v1, "power_pc64"

    const-string v2, "power_rs64"

    const-string v3, "ppc64"

    const-string v4, "power64"

    const-string v5, "powerpc64"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/xutils/commons/ArchUtils;->addProcessors(Lcn/xutils/commons/arch/Processor;[Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private static init_X86_32Bit()V
    .locals 9

    .line 57
    new-instance v0, Lcn/xutils/commons/arch/Processor;

    sget-object v1, Lcn/xutils/commons/arch/Processor$Arch;->BIT_32:Lcn/xutils/commons/arch/Processor$Arch;

    sget-object v2, Lcn/xutils/commons/arch/Processor$Type;->X86:Lcn/xutils/commons/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/arch/Processor;-><init>(Lcn/xutils/commons/arch/Processor$Arch;Lcn/xutils/commons/arch/Processor$Type;)V

    const-string v3, "x86"

    const-string v4, "i386"

    const-string v5, "i486"

    const-string v6, "i586"

    const-string v7, "i686"

    const-string v8, "pentium"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/xutils/commons/ArchUtils;->addProcessors(Lcn/xutils/commons/arch/Processor;[Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private static init_X86_64Bit()V
    .locals 5

    .line 61
    new-instance v0, Lcn/xutils/commons/arch/Processor;

    sget-object v1, Lcn/xutils/commons/arch/Processor$Arch;->BIT_64:Lcn/xutils/commons/arch/Processor$Arch;

    sget-object v2, Lcn/xutils/commons/arch/Processor$Type;->X86:Lcn/xutils/commons/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/arch/Processor;-><init>(Lcn/xutils/commons/arch/Processor$Arch;Lcn/xutils/commons/arch/Processor$Type;)V

    const-string v1, "em64t"

    const-string v2, "universal"

    const-string v3, "x86_64"

    const-string v4, "amd64"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/xutils/commons/ArchUtils;->addProcessors(Lcn/xutils/commons/arch/Processor;[Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method static synthetic lambda$addProcessors$0(Lcn/xutils/commons/arch/Processor;Ljava/lang/String;)V
    .locals 0
    .param p0, "processor"    # Lcn/xutils/commons/arch/Processor;
    .param p1, "e"    # Ljava/lang/String;

    .line 102
    invoke-static {p1, p0}, Lcn/xutils/commons/ArchUtils;->addProcessor(Ljava/lang/String;Lcn/xutils/commons/arch/Processor;)V

    return-void
.end method
