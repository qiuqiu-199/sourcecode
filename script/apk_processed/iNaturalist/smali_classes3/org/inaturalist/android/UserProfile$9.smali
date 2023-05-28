.class Lorg/inaturalist/android/UserProfile$9;
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

    .line 741
    iput-object p1, p0, Lorg/inaturalist/android/UserProfile$9;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 744
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$9;->this$0:Lorg/inaturalist/android/UserProfile;

    iget-object p1, p1, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 745
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 751
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$9;->this$0:Lorg/inaturalist/android/UserProfile;

    iget-object p1, p1, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 752
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 753
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile$9;->this$0:Lorg/inaturalist/android/UserProfile;

    iget-object p1, p1, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v0, "login"

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 757
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile$9;->this$0:Lorg/inaturalist/android/UserProfile;

    invoke-static {v0}, Lorg/inaturalist/android/UserProfile;->access$700(Lorg/inaturalist/android/UserProfile;)Lorg/inaturalist/android/ActivityHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/UserProfile$9;->this$0:Lorg/inaturalist/android/UserProfile;

    iget-object v1, v1, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "description"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/inaturalist/android/ActivityHelper;->alert(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method
