.class Lorg/inaturalist/android/AnnotationsAdapter$2;
.super Ljava/lang/Object;
.source "AnnotationsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/AnnotationsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/AnnotationsAdapter;

.field final synthetic val$expand:Landroid/widget/ImageView;

.field final synthetic val$expandedSection:Landroid/view/ViewGroup;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/AnnotationsAdapter;ILandroid/view/ViewGroup;Landroid/widget/ImageView;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter$2;->this$0:Lorg/inaturalist/android/AnnotationsAdapter;

    iput p2, p0, Lorg/inaturalist/android/AnnotationsAdapter$2;->val$position:I

    iput-object p3, p0, Lorg/inaturalist/android/AnnotationsAdapter$2;->val$expandedSection:Landroid/view/ViewGroup;

    iput-object p4, p0, Lorg/inaturalist/android/AnnotationsAdapter$2;->val$expand:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 269
    iget-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter$2;->this$0:Lorg/inaturalist/android/AnnotationsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/AnnotationsAdapter;->access$000(Lorg/inaturalist/android/AnnotationsAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lorg/inaturalist/android/AnnotationsAdapter$2;->val$position:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 270
    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter$2;->this$0:Lorg/inaturalist/android/AnnotationsAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/AnnotationsAdapter;->access$000(Lorg/inaturalist/android/AnnotationsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lorg/inaturalist/android/AnnotationsAdapter$2;->val$position:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter$2;->val$expandedSection:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter$2;->val$expand:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const p1, 0x7f080078

    goto :goto_1

    :cond_1
    const p1, 0x7f080074

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    iget-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter$2;->this$0:Lorg/inaturalist/android/AnnotationsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/AnnotationsAdapter;->access$100(Lorg/inaturalist/android/AnnotationsAdapter;)Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;

    move-result-object p1

    invoke-interface {p1}, Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;->onAnnotationCollapsedExpanded()V

    return-void
.end method
