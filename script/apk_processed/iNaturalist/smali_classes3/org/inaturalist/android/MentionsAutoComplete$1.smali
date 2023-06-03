.class Lorg/inaturalist/android/MentionsAutoComplete$1;
.super Ljava/lang/Object;
.source "MentionsAutoComplete.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/MentionsAutoComplete;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/MentionsAutoComplete;

.field final synthetic val$searchText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/MentionsAutoComplete;Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete$1;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    iput-object p2, p0, Lorg/inaturalist/android/MentionsAutoComplete$1;->val$searchText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 191
    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete$1;->this$0:Lorg/inaturalist/android/MentionsAutoComplete;

    iget-object v1, p0, Lorg/inaturalist/android/MentionsAutoComplete$1;->val$searchText:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/inaturalist/android/MentionsAutoComplete;->access$100(Lorg/inaturalist/android/MentionsAutoComplete;Ljava/lang/String;)V

    return-void
.end method
