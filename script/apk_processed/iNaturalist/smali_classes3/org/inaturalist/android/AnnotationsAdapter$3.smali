.class Lorg/inaturalist/android/AnnotationsAdapter$3;
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

.field final synthetic val$attributeId:I

.field final synthetic val$fieldName:Ljava/lang/String;

.field final synthetic val$loading:Landroid/view/View;

.field final synthetic val$valuesIdsToDisplay:Ljava/util/ArrayList;

.field final synthetic val$valuesToDisplay:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/AnnotationsAdapter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Landroid/view/View;I)V
    .locals 0

    .line 312
    iput-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter$3;->this$0:Lorg/inaturalist/android/AnnotationsAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/AnnotationsAdapter$3;->val$valuesToDisplay:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/inaturalist/android/AnnotationsAdapter$3;->val$fieldName:Ljava/lang/String;

    iput-object p4, p0, Lorg/inaturalist/android/AnnotationsAdapter$3;->val$valuesIdsToDisplay:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/inaturalist/android/AnnotationsAdapter$3;->val$loading:Landroid/view/View;

    iput p6, p0, Lorg/inaturalist/android/AnnotationsAdapter$3;->val$attributeId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 315
    iget-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter$3;->val$valuesToDisplay:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter$3;->val$valuesToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter$3;->this$0:Lorg/inaturalist/android/AnnotationsAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/AnnotationsAdapter;->access$200(Lorg/inaturalist/android/AnnotationsAdapter;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/AnnotationsAdapter$3;->val$fieldName:Ljava/lang/String;

    new-instance v2, Lorg/inaturalist/android/AnnotationsAdapter$3$1;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/AnnotationsAdapter$3$1;-><init>(Lorg/inaturalist/android/AnnotationsAdapter$3;)V

    invoke-virtual {v0, v1, p1, v2}, Lorg/inaturalist/android/ActivityHelper;->selection(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
