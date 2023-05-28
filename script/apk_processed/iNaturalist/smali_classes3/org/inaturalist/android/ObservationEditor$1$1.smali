.class Lorg/inaturalist/android/ObservationEditor$1$1;
.super Ljava/lang/Object;
.source "ObservationEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationEditor$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ObservationEditor$1;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationEditor$1;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lorg/inaturalist/android/ObservationEditor$1$1;->this$1:Lorg/inaturalist/android/ObservationEditor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 391
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$1$1;->this$1:Lorg/inaturalist/android/ObservationEditor$1;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor$1;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$000(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 392
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$1$1;->this$1:Lorg/inaturalist/android/ObservationEditor$1;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor$1;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$100(Lorg/inaturalist/android/ObservationEditor;)V

    .line 394
    iget-object p1, p0, Lorg/inaturalist/android/ObservationEditor$1$1;->this$1:Lorg/inaturalist/android/ObservationEditor$1;

    iget-object p1, p1, Lorg/inaturalist/android/ObservationEditor$1;->this$0:Lorg/inaturalist/android/ObservationEditor;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationEditor;->access$000(Lorg/inaturalist/android/ObservationEditor;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "Open"

    goto :goto_0

    :pswitch_0
    const-string p1, "Private"

    goto :goto_0

    :pswitch_1
    const-string p1, "Obscured"

    .line 409
    :goto_0
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "New Value"

    .line 410
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string v0, "Obs - Geoprivacy Changed"

    invoke-virtual {p1, v0, p2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 414
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
