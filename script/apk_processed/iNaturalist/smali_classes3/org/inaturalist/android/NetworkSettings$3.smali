.class Lorg/inaturalist/android/NetworkSettings$3;
.super Ljava/lang/Object;
.source "NetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/NetworkSettings;->onINatNetworkRadioButtonClicked(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/NetworkSettings;

.field final synthetic val$index:I

.field final synthetic val$networks:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/NetworkSettings;[Ljava/lang/String;I)V
    .locals 0

    .line 173
    iput-object p1, p0, Lorg/inaturalist/android/NetworkSettings$3;->this$0:Lorg/inaturalist/android/NetworkSettings;

    iput-object p2, p0, Lorg/inaturalist/android/NetworkSettings$3;->val$networks:[Ljava/lang/String;

    iput p3, p0, Lorg/inaturalist/android/NetworkSettings$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    iget-object p1, p0, Lorg/inaturalist/android/NetworkSettings$3;->this$0:Lorg/inaturalist/android/NetworkSettings;

    invoke-static {p1}, Lorg/inaturalist/android/NetworkSettings;->access$100(Lorg/inaturalist/android/NetworkSettings;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    iget-object p2, p0, Lorg/inaturalist/android/NetworkSettings$3;->val$networks:[Ljava/lang/String;

    iget v0, p0, Lorg/inaturalist/android/NetworkSettings$3;->val$index:I

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/INaturalistApp;->setInaturalistNetworkMember(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string p2, "Settings Network Change Completed"

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lorg/inaturalist/android/NetworkSettings$3;->this$0:Lorg/inaturalist/android/NetworkSettings;

    iget p2, p0, Lorg/inaturalist/android/NetworkSettings$3;->val$index:I

    invoke-static {p1, p2}, Lorg/inaturalist/android/NetworkSettings;->access$202(Lorg/inaturalist/android/NetworkSettings;I)I

    .line 183
    iget-object p1, p0, Lorg/inaturalist/android/NetworkSettings$3;->this$0:Lorg/inaturalist/android/NetworkSettings;

    invoke-static {p1}, Lorg/inaturalist/android/NetworkSettings;->access$100(Lorg/inaturalist/android/NetworkSettings;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->applyLocaleSettings()V

    .line 184
    iget-object p1, p0, Lorg/inaturalist/android/NetworkSettings$3;->this$0:Lorg/inaturalist/android/NetworkSettings;

    invoke-static {p1}, Lorg/inaturalist/android/NetworkSettings;->access$100(Lorg/inaturalist/android/NetworkSettings;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p1

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->restart()V

    .line 185
    iget-object p1, p0, Lorg/inaturalist/android/NetworkSettings$3;->this$0:Lorg/inaturalist/android/NetworkSettings;

    invoke-virtual {p1}, Lorg/inaturalist/android/NetworkSettings;->finish()V

    goto :goto_0

    .line 190
    :pswitch_1
    iget-object p1, p0, Lorg/inaturalist/android/NetworkSettings$3;->this$0:Lorg/inaturalist/android/NetworkSettings;

    invoke-static {p1}, Lorg/inaturalist/android/NetworkSettings;->access$000(Lorg/inaturalist/android/NetworkSettings;)Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lorg/inaturalist/android/NetworkSettings$3;->val$index:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 191
    iget-object p1, p0, Lorg/inaturalist/android/NetworkSettings$3;->this$0:Lorg/inaturalist/android/NetworkSettings;

    invoke-static {p1}, Lorg/inaturalist/android/NetworkSettings;->access$000(Lorg/inaturalist/android/NetworkSettings;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lorg/inaturalist/android/NetworkSettings$3;->this$0:Lorg/inaturalist/android/NetworkSettings;

    invoke-static {p2}, Lorg/inaturalist/android/NetworkSettings;->access$200(Lorg/inaturalist/android/NetworkSettings;)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
