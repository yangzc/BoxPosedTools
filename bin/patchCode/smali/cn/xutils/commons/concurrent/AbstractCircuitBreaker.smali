.class public abstract Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;
.super Ljava/lang/Object;
.source "AbstractCircuitBreaker.java"

# interfaces
.implements Lcn/xutils/commons/concurrent/CircuitBreaker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/xutils/commons/concurrent/CircuitBreaker<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "open"


# instance fields
.field private final changeSupport:Ljava/beans/PropertyChangeSupport;

.field protected final state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    .local p0, "this":Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;, "Lcn/xutils/commons/concurrent/AbstractCircuitBreaker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;->CLOSED:Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 47
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;->changeSupport:Ljava/beans/PropertyChangeSupport;

    .line 48
    return-void
.end method

.method protected static isOpen(Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;)Z
    .locals 1
    .param p0, "state"    # Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    .line 101
    sget-object v0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;->OPEN:Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    .line 124
    .local p0, "this":Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;, "Lcn/xutils/commons/concurrent/AbstractCircuitBreaker<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 125
    return-void
.end method

.method protected changeState(Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;)V
    .locals 4
    .param p1, "newState"    # Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    .line 111
    .local p0, "this":Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;, "Lcn/xutils/commons/concurrent/AbstractCircuitBreaker<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;->oppositeState()Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-static {p1}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;->isOpen(Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p1}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;->isOpen(Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;)Z

    move-result v2

    const-string v3, "open"

    invoke-virtual {v0, v3, v1, v2}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;ZZ)V

    .line 114
    :cond_0
    return-void
.end method

.method public abstract checkState()Z
.end method

.method public close()V
    .locals 1

    .line 83
    .local p0, "this":Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;, "Lcn/xutils/commons/concurrent/AbstractCircuitBreaker<TT;>;"
    sget-object v0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;->CLOSED:Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    invoke-virtual {p0, v0}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;->changeState(Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;)V

    .line 84
    return-void
.end method

.method public abstract incrementAndCheckState(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public isClosed()Z
    .locals 1

    .line 63
    .local p0, "this":Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;, "Lcn/xutils/commons/concurrent/AbstractCircuitBreaker<TT;>;"
    invoke-virtual {p0}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 55
    .local p0, "this":Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;, "Lcn/xutils/commons/concurrent/AbstractCircuitBreaker<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    invoke-static {v0}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;->isOpen(Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;)Z

    move-result v0

    return v0
.end method

.method public open()V
    .locals 1

    .line 91
    .local p0, "this":Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;, "Lcn/xutils/commons/concurrent/AbstractCircuitBreaker<TT;>;"
    sget-object v0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;->OPEN:Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;

    invoke-virtual {p0, v0}, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;->changeState(Lcn/xutils/commons/concurrent/AbstractCircuitBreaker$State;)V

    .line 92
    return-void
.end method

.method public removeChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    .line 133
    .local p0, "this":Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;, "Lcn/xutils/commons/concurrent/AbstractCircuitBreaker<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/concurrent/AbstractCircuitBreaker;->changeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 134
    return-void
.end method
