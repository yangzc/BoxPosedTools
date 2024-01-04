.class final enum Lcn/xutils/commons/Range$ComparableComparator;
.super Ljava/lang/Enum;
.source "Range.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ComparableComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/xutils/commons/Range$ComparableComparator;",
        ">;",
        "Ljava/util/Comparator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/xutils/commons/Range$ComparableComparator;

.field public static final enum INSTANCE:Lcn/xutils/commons/Range$ComparableComparator;


# direct methods
.method private static synthetic $values()[Lcn/xutils/commons/Range$ComparableComparator;
    .locals 1

    .line 36
    sget-object v0, Lcn/xutils/commons/Range$ComparableComparator;->INSTANCE:Lcn/xutils/commons/Range$ComparableComparator;

    filled-new-array {v0}, [Lcn/xutils/commons/Range$ComparableComparator;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 38
    new-instance v0, Lcn/xutils/commons/Range$ComparableComparator;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/Range$ComparableComparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/xutils/commons/Range$ComparableComparator;->INSTANCE:Lcn/xutils/commons/Range$ComparableComparator;

    .line 36
    invoke-static {}, Lcn/xutils/commons/Range$ComparableComparator;->$values()[Lcn/xutils/commons/Range$ComparableComparator;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/Range$ComparableComparator;->$VALUES:[Lcn/xutils/commons/Range$ComparableComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/xutils/commons/Range$ComparableComparator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    const-class v0, Lcn/xutils/commons/Range$ComparableComparator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/Range$ComparableComparator;

    return-object v0
.end method

.method public static values()[Lcn/xutils/commons/Range$ComparableComparator;
    .locals 1

    .line 36
    sget-object v0, Lcn/xutils/commons/Range$ComparableComparator;->$VALUES:[Lcn/xutils/commons/Range$ComparableComparator;

    invoke-virtual {v0}, [Lcn/xutils/commons/Range$ComparableComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/xutils/commons/Range$ComparableComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .line 49
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
