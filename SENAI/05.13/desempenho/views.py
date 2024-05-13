from django.shortcuts import render

# Create your views here.

def index(request):
    print("index")
    return render(request, "index.html")

def producao(request):
    print("producao")
    context = {
        "title": "Produção",
        "video_embeded_iframe": '<iframe width="560" height="315" src="https://www.youtube.com/embed/jNQXAC9IVRw?si=F67tolsi9SNGT2z5" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>'
    }
    return render(request, "video.html", context)

def engenharia(request):
    context = {
        "title": "Engenharia",
        "video_embeded_iframe": '<iframe width="560" height="315" src="https://www.youtube.com/embed/jNQXAC9IVRw?si=F67tolsi9SNGT2z5" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>'
    }
    return render(request, "video.html", context)

def qualidade(request):
    context = {
        "title": "Qualidade",
        "video_embeded_iframe": '<iframe width="560" height="315" src="https://www.youtube.com/embed/jNQXAC9IVRw?si=F67tolsi9SNGT2z5" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>'
    }
    return render(request, "video.html", context)

def expedicao(request):
    context = {
        "title": "Expedição",
        "video_embeded_iframe": '<iframe width="560" height="315" src="https://www.youtube.com/embed/jNQXAC9IVRw?si=F67tolsi9SNGT2z5" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>'
    }
    return render(request, "video.html", context)