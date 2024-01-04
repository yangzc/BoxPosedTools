.class public Lcn/xutils/commons/builder/RecursiveToStringStyle;
.super Lcn/xutils/commons/builder/ToStringStyle;
.source "RecursiveToStringStyle.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcn/xutils/commons/builder/ToStringStyle;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method protected accept(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 96
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method public appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 70
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/ClassUtils;->isPrimitiveWrapper(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/String;

    .line 71
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/RecursiveToStringStyle;->accept(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p3, p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 75
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcn/xutils/commons/builder/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    :goto_0
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 81
    .local p3, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1, p3}, Lcn/xutils/commons/builder/RecursiveToStringStyle;->appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0, p1, p3}, Lcn/xutils/commons/builder/RecursiveToStringStyle;->appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 83
    invoke-interface {p3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcn/xutils/commons/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    return-void
.end method
