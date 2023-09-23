.class Lorg/inaturalist/android/GuideDetails$4;
.super Ljava/lang/Object;
.source "GuideDetails.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/GuideDetails;->showEditDownloadDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/GuideDetails;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/GuideDetails;Landroid/app/AlertDialog;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails$4;->this$0:Lorg/inaturalist/android/GuideDetails;

    iput-object p2, p0, Lorg/inaturalist/android/GuideDetails$4;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 425
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$4;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    if-nez p3, :cond_0

    .line 429
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string p2, "Guide Download - Delete"

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 430
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$4;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$100(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideXML;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/GuideXML;->deleteOfflineGuide()Z

    .line 431
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$4;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$1200(Lorg/inaturalist/android/GuideDetails;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    .line 434
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$4;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$100(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideXML;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/GuideXML;->deleteOfflineGuide()Z

    .line 435
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails$4;->this$0:Lorg/inaturalist/android/GuideDetails;

    invoke-static {p1}, Lorg/inaturalist/android/GuideDetails;->access$1100(Lorg/inaturalist/android/GuideDetails;)V

    :cond_1
    :goto_0
    return-void
.end method
