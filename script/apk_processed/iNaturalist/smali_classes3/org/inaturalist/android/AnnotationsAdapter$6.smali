.class Lorg/inaturalist/android/AnnotationsAdapter$6;
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

.field final synthetic val$annotationValueUUID:Ljava/lang/String;

.field final synthetic val$deleteValue:Landroid/widget/ImageView;

.field final synthetic val$loading:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/AnnotationsAdapter;Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter$6;->this$0:Lorg/inaturalist/android/AnnotationsAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/AnnotationsAdapter$6;->val$loading:Landroid/view/View;

    iput-object p3, p0, Lorg/inaturalist/android/AnnotationsAdapter$6;->val$deleteValue:Landroid/widget/ImageView;

    iput-object p4, p0, Lorg/inaturalist/android/AnnotationsAdapter$6;->val$annotationValueUUID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 380
    iget-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter$6;->val$loading:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter$6;->val$deleteValue:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    iget-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter$6;->this$0:Lorg/inaturalist/android/AnnotationsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/AnnotationsAdapter;->access$100(Lorg/inaturalist/android/AnnotationsAdapter;)Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter$6;->val$annotationValueUUID:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;->onDeleteAnnotationValue(Ljava/lang/String;)V

    return-void
.end method
