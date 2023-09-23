.class Lorg/inaturalist/android/UserProfile$13;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/UserProfile;->refreshUserDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/UserProfile;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/UserProfile;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lorg/inaturalist/android/UserProfile$13;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 835
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$13;->this$0:Lorg/inaturalist/android/UserProfile;

    iget-object p1, p1, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v0, "original_user_icon_url"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$13;->this$0:Lorg/inaturalist/android/UserProfile;

    iget-object p1, p1, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v0, "medium_user_icon_url"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$13;->this$0:Lorg/inaturalist/android/UserProfile;

    iget-object p1, p1, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v0, "icon_url"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 836
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lorg/inaturalist/android/UserProfile$13;->this$0:Lorg/inaturalist/android/UserProfile;

    const-class v1, Lorg/inaturalist/android/ProfilePhotoViewer;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "observation"

    .line 837
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile$13;->this$0:Lorg/inaturalist/android/UserProfile;

    iget-object v1, v1, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile$13;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/UserProfile;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
