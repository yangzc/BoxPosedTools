.class public final synthetic Lcn/xutils/commons/exception/ExceptionUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/xutils/commons/exception/ExceptionUtils$$ExternalSyntheticLambda2;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/xutils/commons/exception/ExceptionUtils$$ExternalSyntheticLambda2;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/xutils/commons/exception/ExceptionUtils;->$r8$lambda$vN7Wu77WNgkSv-pxg-AAu7TIWhc(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method
