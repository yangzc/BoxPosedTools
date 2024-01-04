.class public Lcn/xutils/commons/event/EventListenerSupport$ProxyInvocationHandler;
.super Ljava/lang/Object;
.source "EventListenerSupport.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/event/EventListenerSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ProxyInvocationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/xutils/commons/event/EventListenerSupport;


# direct methods
.method protected constructor <init>(Lcn/xutils/commons/event/EventListenerSupport;)V
    .locals 0
    .param p1, "this$0"    # Lcn/xutils/commons/event/EventListenerSupport;

    .line 312
    .local p0, "this":Lcn/xutils/commons/event/EventListenerSupport$ProxyInvocationHandler;, "Lcn/xutils/commons/event/EventListenerSupport<TL;>.ProxyInvocationHandler;"
    iput-object p1, p0, Lcn/xutils/commons/event/EventListenerSupport$ProxyInvocationHandler;->this$0:Lcn/xutils/commons/event/EventListenerSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "unusedProxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 328
    .local p0, "this":Lcn/xutils/commons/event/EventListenerSupport$ProxyInvocationHandler;, "Lcn/xutils/commons/event/EventListenerSupport<TL;>.ProxyInvocationHandler;"
    iget-object v0, p0, Lcn/xutils/commons/event/EventListenerSupport$ProxyInvocationHandler;->this$0:Lcn/xutils/commons/event/EventListenerSupport;

    invoke-static {v0}, Lcn/xutils/commons/event/EventListenerSupport;->-$$Nest$fgetlisteners(Lcn/xutils/commons/event/EventListenerSupport;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 329
    .local v1, "listener":Ljava/lang/Object;, "TL;"
    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .end local v1    # "listener":Ljava/lang/Object;, "TL;"
    goto :goto_0

    .line 331
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
