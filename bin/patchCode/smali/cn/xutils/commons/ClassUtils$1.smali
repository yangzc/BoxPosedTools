.class Lcn/xutils/commons/ClassUtils$1;
.super Ljava/lang/Object;
.source "ClassUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/xutils/commons/ClassUtils;->hierarchy(Ljava/lang/Class;Lcn/xutils/commons/ClassUtils$Interfaces;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$next:Lcn/xutils/commons/mutable/MutableObject;


# direct methods
.method constructor <init>(Lcn/xutils/commons/mutable/MutableObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1107
    iput-object p1, p0, Lcn/xutils/commons/ClassUtils$1;->val$next:Lcn/xutils/commons/mutable/MutableObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1111
    iget-object v0, p0, Lcn/xutils/commons/ClassUtils$1;->val$next:Lcn/xutils/commons/mutable/MutableObject;

    invoke-virtual {v0}, Lcn/xutils/commons/mutable/MutableObject;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1116
    iget-object v0, p0, Lcn/xutils/commons/ClassUtils$1;->val$next:Lcn/xutils/commons/mutable/MutableObject;

    invoke-virtual {v0}, Lcn/xutils/commons/mutable/MutableObject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1117
    .local v0, "result":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcn/xutils/commons/ClassUtils$1;->val$next:Lcn/xutils/commons/mutable/MutableObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/xutils/commons/mutable/MutableObject;->setValue(Ljava/lang/Object;)V

    .line 1118
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1107
    invoke-virtual {p0}, Lcn/xutils/commons/ClassUtils$1;->next()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
