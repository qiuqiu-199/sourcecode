.class Lorg/inaturalist/android/ProfileEditor$3;
.super Ljava/lang/Object;
.source "ProfileEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProfileEditor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProfileEditor;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProfileEditor;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lorg/inaturalist/android/ProfileEditor$3;->this$0:Lorg/inaturalist/android/ProfileEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 244
    iget-object p1, p0, Lorg/inaturalist/android/ProfileEditor$3;->this$0:Lorg/inaturalist/android/ProfileEditor;

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/inaturalist/android/ProfileEditor;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "username"

    const-string v1, ""

    .line 245
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 246
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/inaturalist/android/ProfileEditor$3;->this$0:Lorg/inaturalist/android/ProfileEditor;

    const-class v2, Lorg/inaturalist/android/UserProfile;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>()V

    const-string v2, "login"

    .line 248
    invoke-virtual {v1, v2, p1}, Lorg/inaturalist/android/BetterJSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "user"

    .line 249
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 250
    iget-object p1, p0, Lorg/inaturalist/android/ProfileEditor$3;->this$0:Lorg/inaturalist/android/ProfileEditor;

    invoke-virtual {p1, v0}, Lorg/inaturalist/android/ProfileEditor;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
