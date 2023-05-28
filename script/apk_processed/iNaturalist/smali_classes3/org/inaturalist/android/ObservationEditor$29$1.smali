.class Lorg/inaturalist/android/ObservationEditor$29$1;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor$29;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationEditor$29;

.field final synthetic val$photo:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor$29;Landroid/net/Uri;)V
    .locals 0

    .line 2410
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$29$1;->this$1:Lorg/inaturalist/android/ObservationEditor$29;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationEditor$29$1;->val$photo:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2413
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$29$1;->this$1:Lorg/inaturalist/android/ObservationEditor$29;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$3700(Lorg/inaturalist/android/ObservationEditor;)V

    .line 2414
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$29$1;->this$1:Lorg/inaturalist/android/ObservationEditor$29;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationEditor$29$1;->val$photo:Landroid/net/Uri;

    invoke-static {v0, v1}, Lorg/inaturalist/android/ObservationEditor;->access$3800(Lorg/inaturalist/android/ObservationEditor;Landroid/net/Uri;)V

    .line 2416
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$29$1;->this$1:Lorg/inaturalist/android/ObservationEditor$29;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$3900(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2417
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$29$1;->this$1:Lorg/inaturalist/android/ObservationEditor$29;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$4000(Lorg/inaturalist/android/ObservationEditor;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2419
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$29$1;->this$1:Lorg/inaturalist/android/ObservationEditor$29;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$4100(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2420
    iget-object v0, p0, Lorg/inaturalist/android/ObservationEditor$29$1;->this$1:Lorg/inaturalist/android/ObservationEditor$29;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationEditor$29;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationEditor;->access$4200(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
