.class Lorg/inaturalist/android/AnnotationsAdapter$3$1;
.super Ljava/lang/Object;
.source "AnnotationsAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/AnnotationsAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/AnnotationsAdapter$3;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/AnnotationsAdapter$3;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter$3$1;->this$1:Lorg/inaturalist/android/AnnotationsAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 320
    iget-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter$3$1;->this$1:Lorg/inaturalist/android/AnnotationsAdapter$3;

    iget-object p1, p1, Lorg/inaturalist/android/AnnotationsAdapter$3;->val$valuesIdsToDisplay:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 322
    iget-object p2, p0, Lorg/inaturalist/android/AnnotationsAdapter$3$1;->this$1:Lorg/inaturalist/android/AnnotationsAdapter$3;

    iget-object p2, p2, Lorg/inaturalist/android/AnnotationsAdapter$3;->val$loading:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object p2, p0, Lorg/inaturalist/android/AnnotationsAdapter$3$1;->this$1:Lorg/inaturalist/android/AnnotationsAdapter$3;

    iget-object p2, p2, Lorg/inaturalist/android/AnnotationsAdapter$3;->this$0:Lorg/inaturalist/android/AnnotationsAdapter;

    invoke-static {p2}, Lorg/inaturalist/android/AnnotationsAdapter;->access$100(Lorg/inaturalist/android/AnnotationsAdapter;)Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;

    move-result-object p2

    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter$3$1;->this$1:Lorg/inaturalist/android/AnnotationsAdapter$3;

    iget v0, v0, Lorg/inaturalist/android/AnnotationsAdapter$3;->val$attributeId:I

    invoke-interface {p2, v0, p1}, Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;->onSetAnnotationValue(II)V

    return-void
.end method
