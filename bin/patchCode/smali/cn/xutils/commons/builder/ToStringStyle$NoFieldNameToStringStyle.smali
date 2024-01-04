.class final Lcn/xutils/commons/builder/ToStringStyle$NoFieldNameToStringStyle;
.super Lcn/xutils/commons/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoFieldNameToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2084
    invoke-direct {p0}, Lcn/xutils/commons/builder/ToStringStyle;-><init>()V

    .line 2085
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$NoFieldNameToStringStyle;->setUseFieldNames(Z)V

    .line 2086
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2094
    sget-object v0, Lcn/xutils/commons/builder/ToStringStyle$NoFieldNameToStringStyle;->NO_FIELD_NAMES_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    return-object v0
.end method
