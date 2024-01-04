.class final Lcn/xutils/commons/builder/ToStringStyle$DefaultToStringStyle;
.super Lcn/xutils/commons/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2054
    invoke-direct {p0}, Lcn/xutils/commons/builder/ToStringStyle;-><init>()V

    .line 2055
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2063
    sget-object v0, Lcn/xutils/commons/builder/ToStringStyle$DefaultToStringStyle;->DEFAULT_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    return-object v0
.end method
