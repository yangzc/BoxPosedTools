.class Lcn/xutils/commons/ClassUtils$2;
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
.field interfaces:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic val$seenInterfaces:Ljava/util/Set;

.field final synthetic val$wrapped:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1135
    iput-object p1, p0, Lcn/xutils/commons/ClassUtils$2;->val$wrapped:Ljava/util/Iterator;

    iput-object p2, p0, Lcn/xutils/commons/ClassUtils$2;->val$seenInterfaces:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1136
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcn/xutils/commons/ClassUtils$2;->interfaces:Ljava/util/Iterator;

    return-void
.end method

.method private walkInterfaces(Ljava/util/Set;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1163
    .local p1, "addTo":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1164
    .local v3, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcn/xutils/commons/ClassUtils$2;->val$seenInterfaces:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1165
    invoke-interface {p1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1167
    :cond_0
    invoke-direct {p0, p1, v3}, Lcn/xutils/commons/ClassUtils$2;->walkInterfaces(Ljava/util/Set;Ljava/lang/Class;)V

    .line 1163
    .end local v3    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1169
    :cond_1
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1140
    iget-object v0, p0, Lcn/xutils/commons/ClassUtils$2;->interfaces:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/xutils/commons/ClassUtils$2;->val$wrapped:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
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

    .line 1145
    iget-object v0, p0, Lcn/xutils/commons/ClassUtils$2;->interfaces:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcn/xutils/commons/ClassUtils$2;->interfaces:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1147
    .local v0, "nextInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcn/xutils/commons/ClassUtils$2;->val$seenInterfaces:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1148
    return-object v0

    .line 1150
    .end local v0    # "nextInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v0, p0, Lcn/xutils/commons/ClassUtils$2;->val$wrapped:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 1151
    .local v0, "nextSuperclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1152
    .local v1, "currentInterfaces":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Class<*>;>;"
    invoke-direct {p0, v1, v0}, Lcn/xutils/commons/ClassUtils$2;->walkInterfaces(Ljava/util/Set;Ljava/lang/Class;)V

    .line 1153
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lcn/xutils/commons/ClassUtils$2;->interfaces:Ljava/util/Iterator;

    .line 1154
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1135
    invoke-virtual {p0}, Lcn/xutils/commons/ClassUtils$2;->next()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
