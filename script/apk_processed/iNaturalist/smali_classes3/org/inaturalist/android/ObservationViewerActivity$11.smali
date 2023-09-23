.class Lorg/inaturalist/android/ObservationViewerActivity$11;
.super Ljava/lang/Object;
.source "ObservationViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationViewerActivity;->refreshActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationViewerActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationViewerActivity;)V
    .locals 0

    .line 1092
    iput-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1095
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1600(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1096
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1700(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1098
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lorg/inaturalist/android/ObservationViewerActivity$11$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationViewerActivity$11$1;-><init>(Lorg/inaturalist/android/ObservationViewerActivity$11;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1107
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1800(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1109
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1900(Lorg/inaturalist/android/ObservationViewerActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "username"

    const/4 v1, 0x0

    .line 1110
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "user_icon_url"

    .line 1111
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1113
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$2100(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance v0, Lorg/inaturalist/android/ObservationViewerActivity$11$2;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationViewerActivity$11$2;-><init>(Lorg/inaturalist/android/ObservationViewerActivity$11;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1141
    iget-object p1, p0, Lorg/inaturalist/android/ObservationViewerActivity$11;->this$0:Lorg/inaturalist/android/ObservationViewerActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationViewerActivity;->access$1600(Lorg/inaturalist/android/ObservationViewerActivity;)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lorg/inaturalist/android/ObservationViewerActivity$11$3;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationViewerActivity$11$3;-><init>(Lorg/inaturalist/android/ObservationViewerActivity$11;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
