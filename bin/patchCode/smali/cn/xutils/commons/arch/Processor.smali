.class public Lcn/xutils/commons/arch/Processor;
.super Ljava/lang/Object;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/arch/Processor$Arch;,
        Lcn/xutils/commons/arch/Processor$Type;
    }
.end annotation


# instance fields
.field private final arch:Lcn/xutils/commons/arch/Processor$Arch;

.field private final type:Lcn/xutils/commons/arch/Processor$Type;


# direct methods
.method public constructor <init>(Lcn/xutils/commons/arch/Processor$Arch;Lcn/xutils/commons/arch/Processor$Type;)V
    .locals 0
    .param p1, "arch"    # Lcn/xutils/commons/arch/Processor$Arch;
    .param p2, "type"    # Lcn/xutils/commons/arch/Processor$Type;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcn/xutils/commons/arch/Processor;->arch:Lcn/xutils/commons/arch/Processor$Arch;

    .line 147
    iput-object p2, p0, Lcn/xutils/commons/arch/Processor;->type:Lcn/xutils/commons/arch/Processor$Type;

    .line 148
    return-void
.end method


# virtual methods
.method public getArch()Lcn/xutils/commons/arch/Processor$Arch;
    .locals 1

    .line 158
    iget-object v0, p0, Lcn/xutils/commons/arch/Processor;->arch:Lcn/xutils/commons/arch/Processor$Arch;

    return-object v0
.end method

.method public getType()Lcn/xutils/commons/arch/Processor$Type;
    .locals 1

    .line 169
    iget-object v0, p0, Lcn/xutils/commons/arch/Processor;->type:Lcn/xutils/commons/arch/Processor$Type;

    return-object v0
.end method

.method public is32Bit()Z
    .locals 2

    .line 178
    sget-object v0, Lcn/xutils/commons/arch/Processor$Arch;->BIT_32:Lcn/xutils/commons/arch/Processor$Arch;

    iget-object v1, p0, Lcn/xutils/commons/arch/Processor;->arch:Lcn/xutils/commons/arch/Processor$Arch;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public is64Bit()Z
    .locals 2

    .line 187
    sget-object v0, Lcn/xutils/commons/arch/Processor$Arch;->BIT_64:Lcn/xutils/commons/arch/Processor$Arch;

    iget-object v1, p0, Lcn/xutils/commons/arch/Processor;->arch:Lcn/xutils/commons/arch/Processor$Arch;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAarch64()Z
    .locals 2

    .line 198
    sget-object v0, Lcn/xutils/commons/arch/Processor$Type;->AARCH_64:Lcn/xutils/commons/arch/Processor$Type;

    iget-object v1, p0, Lcn/xutils/commons/arch/Processor;->type:Lcn/xutils/commons/arch/Processor$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIA64()Z
    .locals 2

    .line 207
    sget-object v0, Lcn/xutils/commons/arch/Processor$Type;->IA_64:Lcn/xutils/commons/arch/Processor$Type;

    iget-object v1, p0, Lcn/xutils/commons/arch/Processor;->type:Lcn/xutils/commons/arch/Processor$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPPC()Z
    .locals 2

    .line 216
    sget-object v0, Lcn/xutils/commons/arch/Processor$Type;->PPC:Lcn/xutils/commons/arch/Processor$Type;

    iget-object v1, p0, Lcn/xutils/commons/arch/Processor;->type:Lcn/xutils/commons/arch/Processor$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isX86()Z
    .locals 2

    .line 225
    sget-object v0, Lcn/xutils/commons/arch/Processor$Type;->X86:Lcn/xutils/commons/arch/Processor$Type;

    iget-object v1, p0, Lcn/xutils/commons/arch/Processor;->type:Lcn/xutils/commons/arch/Processor$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcn/xutils/commons/arch/Processor;->type:Lcn/xutils/commons/arch/Processor$Type;

    invoke-virtual {v1}, Lcn/xutils/commons/arch/Processor$Type;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/xutils/commons/arch/Processor;->arch:Lcn/xutils/commons/arch/Processor$Arch;

    invoke-virtual {v2}, Lcn/xutils/commons/arch/Processor$Arch;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
