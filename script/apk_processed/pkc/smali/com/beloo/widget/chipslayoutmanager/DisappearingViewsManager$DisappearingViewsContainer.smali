.class Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;
.super Ljava/lang/Object;
.source "DisappearingViewsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisappearingViewsContainer"
.end annotation


# instance fields
.field private backwardViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private forwardViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager;


# direct methods
.method constructor <init>(Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;->this$0:Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;->backwardViews:Landroid/util/SparseArray;

    .line 30
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;->forwardViews:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;)Landroid/util/SparseArray;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;->backwardViews:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;)Landroid/util/SparseArray;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;->forwardViews:Landroid/util/SparseArray;

    return-object p0
.end method


# virtual methods
.method getBackwardViews()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;->backwardViews:Landroid/util/SparseArray;

    return-object v0
.end method

.method getForwardViews()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;->forwardViews:Landroid/util/SparseArray;

    return-object v0
.end method

.method size()I
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;->backwardViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/DisappearingViewsManager$DisappearingViewsContainer;->forwardViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
