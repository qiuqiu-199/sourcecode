.class Lorg/inaturalist/android/ProfileEditor$1;
.super Ljava/lang/Object;
.source "ProfileEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProfileEditor;->onBackPressed()V
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

    .line 172
    iput-object p1, p0, Lorg/inaturalist/android/ProfileEditor$1;->this$0:Lorg/inaturalist/android/ProfileEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 175
    iget-object p1, p0, Lorg/inaturalist/android/ProfileEditor$1;->this$0:Lorg/inaturalist/android/ProfileEditor;

    invoke-virtual {p1}, Lorg/inaturalist/android/ProfileEditor;->finish()V

    return-void
.end method