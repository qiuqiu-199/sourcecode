.class Lorg/inaturalist/android/SettingsFragment$2$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/SettingsFragment$2;->onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/SettingsFragment$2;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/SettingsFragment$2;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/inaturalist/android/SettingsFragment$2$1;->this$1:Lorg/inaturalist/android/SettingsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 131
    iget-object p1, p0, Lorg/inaturalist/android/SettingsFragment$2$1;->this$1:Lorg/inaturalist/android/SettingsFragment$2;

    iget-object p1, p1, Lorg/inaturalist/android/SettingsFragment$2;->this$0:Lorg/inaturalist/android/SettingsFragment;

    invoke-static {p1}, Lorg/inaturalist/android/SettingsFragment;->access$000(Lorg/inaturalist/android/SettingsFragment;)V

    return-void
.end method
