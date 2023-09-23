.class Lorg/inaturalist/android/MultipleChoiceAdapter$1;
.super Ljava/lang/Object;
.source "MultipleChoiceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MultipleChoiceAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MultipleChoiceAdapter;

.field final synthetic val$checkbox:Landroid/view/View;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MultipleChoiceAdapter;Landroid/view/View;I)V
    .locals 0

    .line 57
    iput-object p1, p0, Lorg/inaturalist/android/MultipleChoiceAdapter$1;->this$0:Lorg/inaturalist/android/MultipleChoiceAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/MultipleChoiceAdapter$1;->val$checkbox:Landroid/view/View;

    iput p3, p0, Lorg/inaturalist/android/MultipleChoiceAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lorg/inaturalist/android/MultipleChoiceAdapter$1;->val$checkbox:Landroid/view/View;

    iget-object v0, p0, Lorg/inaturalist/android/MultipleChoiceAdapter$1;->val$checkbox:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 61
    iget-object p1, p0, Lorg/inaturalist/android/MultipleChoiceAdapter$1;->val$checkbox:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lorg/inaturalist/android/MultipleChoiceAdapter$1;->this$0:Lorg/inaturalist/android/MultipleChoiceAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/MultipleChoiceAdapter;->access$000(Lorg/inaturalist/android/MultipleChoiceAdapter;)Ljava/util/Set;

    move-result-object p1

    iget v0, p0, Lorg/inaturalist/android/MultipleChoiceAdapter$1;->val$position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/MultipleChoiceAdapter$1;->this$0:Lorg/inaturalist/android/MultipleChoiceAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/MultipleChoiceAdapter;->access$000(Lorg/inaturalist/android/MultipleChoiceAdapter;)Ljava/util/Set;

    move-result-object p1

    iget v0, p0, Lorg/inaturalist/android/MultipleChoiceAdapter$1;->val$position:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
