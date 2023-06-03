.class Lorg/inaturalist/android/AnnotationsAdapter$8;
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

.field final synthetic val$disagreeContainer:Landroid/view/ViewGroup;

.field final synthetic val$loading:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/AnnotationsAdapter;Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter$8;->this$0:Lorg/inaturalist/android/AnnotationsAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/AnnotationsAdapter$8;->val$loading:Landroid/view/View;

    iput-object p3, p0, Lorg/inaturalist/android/AnnotationsAdapter$8;->val$disagreeContainer:Landroid/view/ViewGroup;

    iput-object p4, p0, Lorg/inaturalist/android/AnnotationsAdapter$8;->val$annotationValueUUID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 478
    iget-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter$8;->val$loading:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 480
    iget-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter$8;->val$disagreeContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 482
    iget-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter$8;->this$0:Lorg/inaturalist/android/AnnotationsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/AnnotationsAdapter;->access$100(Lorg/inaturalist/android/AnnotationsAdapter;)Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter$8;->val$annotationValueUUID:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;->onAnnotationVoteDelete(Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter$8;->this$0:Lorg/inaturalist/android/AnnotationsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/AnnotationsAdapter;->access$100(Lorg/inaturalist/android/AnnotationsAdapter;)Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;

    move-result-object p1

    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter$8;->val$annotationValueUUID:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;->onAnnotationDisagree(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
