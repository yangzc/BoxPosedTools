.class final Lcn/xutils/commons/builder/ToStringStyle$SimpleToStringStyle;
.super Lcn/xutils/commons/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2146
    invoke-direct {p0}, Lcn/xutils/commons/builder/ToStringStyle;-><init>()V

    .line 2147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$SimpleToStringStyle;->setUseClassName(Z)V

    .line 2148
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$SimpleToStringStyle;->setUseIdentityHashCode(Z)V

    .line 2149
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$SimpleToStringStyle;->setUseFieldNames(Z)V

    .line 2150
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$SimpleToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 2151
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$SimpleToStringStyle;->setContentEnd(Ljava/lang/String;)V

    .line 2152
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2159
    sget-object v0, Lcn/xutils/commons/builder/ToStringStyle$SimpleToStringStyle;->SIMPLE_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    return-object v0
.end method
