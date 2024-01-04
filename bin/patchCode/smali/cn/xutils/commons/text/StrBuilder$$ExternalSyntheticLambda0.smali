.class public final synthetic Lcn/xutils/commons/text/StrBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcn/xutils/commons/text/StrBuilder;


# direct methods
.method public synthetic constructor <init>(Lcn/xutils/commons/text/StrBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/text/StrBuilder$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/text/StrBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder$$ExternalSyntheticLambda0;->f$0:Lcn/xutils/commons/text/StrBuilder;

    invoke-virtual {v0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lcn/xutils/commons/text/StrBuilder;

    return-void
.end method
