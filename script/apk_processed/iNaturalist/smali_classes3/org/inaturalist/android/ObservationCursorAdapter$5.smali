.class Lorg/inaturalist/android/ObservationCursorAdapter$5;
.super Ljava/lang/Object;
.source "ObservationCursorAdapter.java"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationCursorAdapter;->loadObsImage(ILandroid/widget/ImageView;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$largeVersion:Z

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$newImageUrl:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationCursorAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .line 977
    iput-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->val$newImageUrl:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->val$largeVersion:Z

    iput p6, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 7

    .line 980
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$1100(Lorg/inaturalist/android/ObservationCursorAdapter;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->val$imageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 981
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$1100(Lorg/inaturalist/android/ObservationCursorAdapter;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->val$imageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 982
    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 988
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 990
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$900(Lorg/inaturalist/android/ObservationCursorAdapter;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->val$imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->val$newImageUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->val$largeVersion:Z

    if-nez v0, :cond_2

    .line 993
    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->this$0:Lorg/inaturalist/android/ObservationCursorAdapter;

    iget v2, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->val$position:I

    iget-object v3, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->val$imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/inaturalist/android/ObservationCursorAdapter$5;->val$name:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lorg/inaturalist/android/ObservationCursorAdapter;->access$1200(Lorg/inaturalist/android/ObservationCursorAdapter;ILandroid/widget/ImageView;Ljava/lang/String;ZZ)V

    :cond_2
    return-void
.end method
