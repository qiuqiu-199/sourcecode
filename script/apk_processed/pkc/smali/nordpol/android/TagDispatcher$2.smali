.class Lnordpol/android/TagDispatcher$2;
.super Landroid/os/AsyncTask;
.source "TagDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnordpol/android/TagDispatcher;->dispatchTag(Landroid/nfc/Tag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnordpol/android/TagDispatcher;

.field final synthetic val$tag:Landroid/nfc/Tag;


# direct methods
.method constructor <init>(Lnordpol/android/TagDispatcher;Landroid/nfc/Tag;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lnordpol/android/TagDispatcher$2;->this$0:Lnordpol/android/TagDispatcher;

    iput-object p2, p0, Lnordpol/android/TagDispatcher$2;->val$tag:Landroid/nfc/Tag;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 317
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnordpol/android/TagDispatcher$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 320
    iget-object p1, p0, Lnordpol/android/TagDispatcher$2;->this$0:Lnordpol/android/TagDispatcher;

    invoke-static {p1}, Lnordpol/android/TagDispatcher;->access$000(Lnordpol/android/TagDispatcher;)Lnordpol/android/OnDiscoveredTagListener;

    move-result-object p1

    iget-object v0, p0, Lnordpol/android/TagDispatcher$2;->val$tag:Landroid/nfc/Tag;

    invoke-interface {p1, v0}, Lnordpol/android/OnDiscoveredTagListener;->tagDiscovered(Landroid/nfc/Tag;)V

    const/4 p1, 0x0

    return-object p1
.end method
