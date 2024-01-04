.class public Lcn/xutils/commons/event/EventListenerSupport;
.super Ljava/lang/Object;
.source "EventListenerSupport.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/event/EventListenerSupport$ProxyInvocationHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x31ddd8615c1ecd20L


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private transient prototypeArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[T",
            "L;"
        }
    .end annotation
.end field

.field private transient proxy:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetlisteners(Lcn/xutils/commons/event/EventListenerSupport;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcn/xutils/commons/event/EventListenerSupport;->listeners:Ljava/util/List;

    return-object p0
.end method

.method private constructor <init>()V
    .locals 1

    .line 155
    .local p0, "this":Lcn/xutils/commons/event/EventListenerSupport;, "Lcn/xutils/commons/event/EventListenerSupport<TL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcn/xutils/commons/event/EventListenerSupport;->listeners:Ljava/util/List;

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "T",
            "L;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p0, "this":Lcn/xutils/commons/event/EventListenerSupport;, "Lcn/xutils/commons/event/EventListenerSupport<TL;>;"
    .local p1, "listenerInterface":Ljava/lang/Class;, "Ljava/lang/Class<TL;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/xutils/commons/event/EventListenerSupport;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "T",
            "L;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcn/xutils/commons/event/EventListenerSupport;, "Lcn/xutils/commons/event/EventListenerSupport<TL;>;"
    .local p1, "listenerInterface":Ljava/lang/Class;, "Ljava/lang/Class<TL;>;"
    invoke-direct {p0}, Lcn/xutils/commons/event/EventListenerSupport;-><init>()V

    .line 144
    const-string v0, "listenerInterface"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    const-string v0, "classLoader"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    .line 147
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 146
    const-string v2, "Class %s is not an interface"

    invoke-static {v0, v2, v1}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/event/EventListenerSupport;->initializeTransientFields(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 149
    return-void
.end method

.method public static create(Ljava/lang/Class;)Lcn/xutils/commons/event/EventListenerSupport;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcn/xutils/commons/event/EventListenerSupport<",
            "TT;>;"
        }
    .end annotation

    .line 110
    .local p0, "listenerInterface":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcn/xutils/commons/event/EventListenerSupport;

    invoke-direct {v0, p0}, Lcn/xutils/commons/event/EventListenerSupport;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private createProxy(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "T",
            "L;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 296
    .local p0, "this":Lcn/xutils/commons/event/EventListenerSupport;, "Lcn/xutils/commons/event/EventListenerSupport<TL;>;"
    .local p1, "listenerInterface":Ljava/lang/Class;, "Ljava/lang/Class<TL;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 297
    invoke-virtual {p0}, Lcn/xutils/commons/event/EventListenerSupport;->createInvocationHandler()Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 296
    invoke-static {p2, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/event/EventListenerSupport;->proxy:Ljava/lang/Object;

    .line 298
    return-void
.end method

.method private initializeTransientFields(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "T",
            "L;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    .line 286
    .local p0, "this":Lcn/xutils/commons/event/EventListenerSupport;, "Lcn/xutils/commons/event/EventListenerSupport<TL;>;"
    .local p1, "listenerInterface":Ljava/lang/Class;, "Ljava/lang/Class<TL;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/xutils/commons/ArrayUtils;->newInstance(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/event/EventListenerSupport;->prototypeArray:[Ljava/lang/Object;

    .line 287
    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/event/EventListenerSupport;->createProxy(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 288
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "objectInputStream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 270
    .local p0, "this":Lcn/xutils/commons/event/EventListenerSupport;, "Lcn/xutils/commons/event/EventListenerSupport<TL;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 272
    .local v0, "srcListeners":[Ljava/lang/Object;, "[TL;"
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>([Ljava/lang/Object;)V

    iput-object v1, p0, Lcn/xutils/commons/event/EventListenerSupport;->listeners:Ljava/util/List;

    .line 274
    invoke-static {v0}, Lcn/xutils/commons/ArrayUtils;->getComponentType([Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    .line 276
    .local v1, "listenerInterface":Ljava/lang/Class;, "Ljava/lang/Class<TL;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/xutils/commons/event/EventListenerSupport;->initializeTransientFields(Ljava/lang/Class;Ljava/lang/ClassLoader;)V

    .line 277
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 7
    .param p1, "objectOutputStream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    .local p0, "this":Lcn/xutils/commons/event/EventListenerSupport;, "Lcn/xutils/commons/event/EventListenerSupport<TL;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "serializableListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TL;>;"
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 246
    .local v1, "testObjectOutputStream":Ljava/io/ObjectOutputStream;
    iget-object v2, p0, Lcn/xutils/commons/event/EventListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 248
    .local v3, "listener":Ljava/lang/Object;, "TL;"
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 249
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    goto :goto_1

    .line 250
    :catch_0
    move-exception v4

    .line 252
    .local v4, "exception":Ljava/io/IOException;
    new-instance v5, Ljava/io/ObjectOutputStream;

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v5, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v5

    .line 254
    .end local v3    # "listener":Ljava/lang/Object;, "TL;"
    .end local v4    # "exception":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 259
    :cond_0
    iget-object v2, p0, Lcn/xutils/commons/event/EventListenerSupport;->prototypeArray:[Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 260
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcn/xutils/commons/event/EventListenerSupport;, "Lcn/xutils/commons/event/EventListenerSupport<TL;>;"
    .local p1, "listener":Ljava/lang/Object;, "TL;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/event/EventListenerSupport;->addListener(Ljava/lang/Object;Z)V

    .line 184
    return-void
.end method

.method public addListener(Ljava/lang/Object;Z)V
    .locals 1
    .param p2, "allowDuplicate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Z)V"
        }
    .end annotation

    .line 198
    .local p0, "this":Lcn/xutils/commons/event/EventListenerSupport;, "Lcn/xutils/commons/event/EventListenerSupport<TL;>;"
    .local p1, "listener":Ljava/lang/Object;, "TL;"
    const-string v0, "listener"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    if-nez p2, :cond_0

    iget-object v0, p0, Lcn/xutils/commons/event/EventListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    iget-object v0, p0, Lcn/xutils/commons/event/EventListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_1
    return-void
.end method

.method protected createInvocationHandler()Ljava/lang/reflect/InvocationHandler;
    .locals 1

    .line 306
    .local p0, "this":Lcn/xutils/commons/event/EventListenerSupport;, "Lcn/xutils/commons/event/EventListenerSupport<TL;>;"
    new-instance v0, Lcn/xutils/commons/event/EventListenerSupport$ProxyInvocationHandler;

    invoke-direct {v0, p0}, Lcn/xutils/commons/event/EventListenerSupport$ProxyInvocationHandler;-><init>(Lcn/xutils/commons/event/EventListenerSupport;)V

    return-object v0
.end method

.method public fire()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lcn/xutils/commons/event/EventListenerSupport;, "Lcn/xutils/commons/event/EventListenerSupport<TL;>;"
    iget-object v0, p0, Lcn/xutils/commons/event/EventListenerSupport;->proxy:Ljava/lang/Object;

    return-object v0
.end method

.method getListenerCount()I
    .locals 1

    .line 210
    .local p0, "this":Lcn/xutils/commons/event/EventListenerSupport;, "Lcn/xutils/commons/event/EventListenerSupport<TL;>;"
    iget-object v0, p0, Lcn/xutils/commons/event/EventListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getListeners()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[T",
            "L;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lcn/xutils/commons/event/EventListenerSupport;, "Lcn/xutils/commons/event/EventListenerSupport<TL;>;"
    iget-object v0, p0, Lcn/xutils/commons/event/EventListenerSupport;->listeners:Ljava/util/List;

    iget-object v1, p0, Lcn/xutils/commons/event/EventListenerSupport;->prototypeArray:[Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 222
    .local p0, "this":Lcn/xutils/commons/event/EventListenerSupport;, "Lcn/xutils/commons/event/EventListenerSupport<TL;>;"
    .local p1, "listener":Ljava/lang/Object;, "TL;"
    const-string v0, "listener"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    iget-object v0, p0, Lcn/xutils/commons/event/EventListenerSupport;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 224
    return-void
.end method
