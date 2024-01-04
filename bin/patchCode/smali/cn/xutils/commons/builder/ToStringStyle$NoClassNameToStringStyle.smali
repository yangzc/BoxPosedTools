.class final Lcn/xutils/commons/builder/ToStringStyle$NoClassNameToStringStyle;
.super Lcn/xutils/commons/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoClassNameToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2213
    invoke-direct {p0}, Lcn/xutils/commons/builder/ToStringStyle;-><init>()V

    .line 2214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$NoClassNameToStringStyle;->setUseClassName(Z)V

    .line 2215
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ToStringStyle$NoClassNameToStringStyle;->setUseIdentityHashCode(Z)V

    .line 2216
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 2224
    sget-object v0, Lcn/xutils/commons/builder/ToStringStyle$NoClassNameToStringStyle;->NO_CLASS_NAME_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    return-object v0
.end method
