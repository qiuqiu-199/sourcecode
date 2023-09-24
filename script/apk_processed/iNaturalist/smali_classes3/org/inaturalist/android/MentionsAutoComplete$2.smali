.class Lorg/inaturalist/android/MentionsAutoComplete$2;
.super Ljava/lang/Object;
.source "MentionsAutoComplete.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MentionsAutoComplete;->refreshViewState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MentionsAutoComplete;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MentionsAutoComplete;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete$2;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 327
    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete$2;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {v0}, Lorg/inaturalist/android/MentionsAutoComplete;->access$600(Lorg/inaturalist/android/MentionsAutoComplete;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 328
    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete$2;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    invoke-static {v0}, Lorg/inaturalist/android/MentionsAutoComplete;->access$600(Lorg/inaturalist/android/MentionsAutoComplete;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
