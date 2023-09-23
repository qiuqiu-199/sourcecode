.class public Lorg/inaturalist/android/MultipleChoiceAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MultipleChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0d008a

    .line 37
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 39
    iput-object p2, p0, Lorg/inaturalist/android/MultipleChoiceAdapter;->mItems:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lorg/inaturalist/android/MultipleChoiceAdapter;->mContext:Landroid/content/Context;

    .line 41
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/inaturalist/android/MultipleChoiceAdapter;->mSelectedItems:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/MultipleChoiceAdapter;)Ljava/util/Set;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/inaturalist/android/MultipleChoiceAdapter;->mSelectedItems:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public getSelectedItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/inaturalist/android/MultipleChoiceAdapter;->mSelectedItems:Ljava/util/Set;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/inaturalist/android/MultipleChoiceAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    const p2, 0x7f0d008a

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 48
    :cond_0
    iget-object p3, p0, Lorg/inaturalist/android/MultipleChoiceAdapter;->mItems:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const v0, 0x7f0a039a

    .line 50
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a00ab

    .line 51
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 53
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p3, p0, Lorg/inaturalist/android/MultipleChoiceAdapter;->mSelectedItems:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {v1, p3}, Landroid/view/View;->setSelected(Z)V

    .line 57
    new-instance p3, Lorg/inaturalist/android/MultipleChoiceAdapter$1;

    invoke-direct {p3, p0, v1, p1}, Lorg/inaturalist/android/MultipleChoiceAdapter$1;-><init>(Lorg/inaturalist/android/MultipleChoiceAdapter;Landroid/view/View;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
