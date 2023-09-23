.class Lorg/inaturalist/android/ProjectFieldViewer$2;
.super Ljava/lang/Object;
.source "ProjectFieldViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectFieldViewer;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProjectFieldViewer;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectFieldViewer;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer$2;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 359
    new-instance p1, Lorg/inaturalist/android/DatePickerFragment;

    invoke-direct {p1}, Lorg/inaturalist/android/DatePickerFragment;-><init>()V

    .line 360
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer$2;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {v0}, Lorg/inaturalist/android/ProjectFieldViewer;->access$900(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/DatePickerFragment;->setDate(Landroid/widget/TextView;)V

    .line 361
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer$2;->this$0:Lorg/inaturalist/android/ProjectFieldViewer;

    invoke-static {v0}, Lorg/inaturalist/android/ProjectFieldViewer;->access$100(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "datePicker"

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/DatePickerFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
