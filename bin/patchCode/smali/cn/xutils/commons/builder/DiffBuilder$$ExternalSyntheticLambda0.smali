.class public final synthetic Lcn/xutils/commons/builder/DiffBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/builder/DiffBuilder;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/builder/DiffBuilder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/builder/DiffBuilder$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/builder/DiffBuilder;

    iput-object p2, p0, Lcn/xutils/commons/builder/DiffBuilder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/xutils/commons/builder/DiffBuilder$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/builder/DiffBuilder;

    iget-object v1, p0, Lcn/xutils/commons/builder/DiffBuilder$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Lcn/xutils/commons/builder/Diff;

    invoke-virtual {v0, v1, p1}, Lcn/xutils/commons/builder/DiffBuilder;->lambda$append$0$cn-xutils-commons-builder-DiffBuilder(Ljava/lang/String;Lcn/xutils/commons/builder/Diff;)V

    return-void
.end method
