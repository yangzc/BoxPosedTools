.class public final synthetic Lcn/xutils/commons/ArchUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/arch/Processor;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/arch/Processor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/ArchUtils$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/arch/Processor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/ArchUtils$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/arch/Processor;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/xutils/commons/ArchUtils;->lambda$addProcessors$0(Lcn/xutils/commons/arch/Processor;Ljava/lang/String;)V

    return-void
.end method